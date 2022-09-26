package com.fivegroup.project.monitor;

import com.fivegroup.project.entity.TblLog;
import com.fivegroup.project.service.TblLogService;
import com.fivegroup.project.util.JwtHelper;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Date;

/**
 * AOP实现日志
 *
 * @author 最后的轻语_dd43
 */

@Aspect
@Slf4j
@Component
public class LogAopAspect {
	private static Logger logger = LoggerFactory.getLogger(LogAopAspect.class);
	@Autowired
	private TblLogService tblLogService;
	
	
	/**
	 * 环绕通知记录日志通过注解匹配到需要增加日志功能的方法
	 *
	 * @param joinPoint
	 * @return
	 * @throws Throwable
	 */
	@Around("execution(* com.fivegroup.project.controller.*.*(..))")
	public Object myEnhance(ProceedingJoinPoint joinPoint) {
		// 参数
		Object[] args = joinPoint.getArgs();
		Signature signature = joinPoint.getSignature();
		TblLog log = new TblLog();
		ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		HttpServletRequest request = requestAttributes.getRequest();
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		
		log.setIp(ip.equals("0:0:0:0:0:0:0:1") ? "127.0.0.1" : ip);
		// 获取用户信息
		String username = JwtHelper.getUsername(request);
		// 获取类名
		String className = joinPoint.getTarget().getClass().getName();
		log.setClassName(className);
		String[] split = signature.toString().split("\\.");
		String method = split[split.length - 1];
		// 设置方法名
		log.setMethodName(method);
		String paramString = Arrays.toString(args);
		log.setParams(paramString);
		if (paramString.getBytes().length > 8889) {
			log.setParams("Too Long Params To Save ");
		}
		// 日志操作时间
		log.setCreateTime(new Date());
		System.out.println("log:" + log.toString());
		log.setLoginName(username);
		log.setUserName(username);
		tblLogService.insert(log);
		
		try {
			Object proceed = joinPoint.proceed(args);
			return proceed;
		} catch (Throwable var14) {
			var14.printStackTrace();
			return null;
		}
	}
	
	
}