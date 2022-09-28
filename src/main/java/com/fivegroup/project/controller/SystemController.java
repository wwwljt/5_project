package com.fivegroup.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/13  9:48  星期二
 * <p>
 */
@Controller
public class SystemController {
	/**
	 * 跳转到首页
	 *
	 * @return
	 */
	@GetMapping("/")
	public String index() {
		return "forward:index.html";
	}
	
	/**
	 * 退出
	 *
	 * @param request
	 * @return
	 */
	@GetMapping("/exit")
	public String exit(HttpServletRequest request) {
		HttpSession session = request.getSession();
		// 清除 token
		session.removeAttribute("token");
		session.invalidate();
		System.out.println("session 清空了");
		return "forward:login.html";
		
	}
	
	/**
	 * 跳转到最终页面
	 * @param jsp
	 * @param modelAndView
	 * @param session
	 * @return
	 */
	@GetMapping("/jump/{jsp}")
	public ModelAndView jump(@PathVariable String jsp, ModelAndView modelAndView, HttpSession session) {
		// 清空 session
		session.removeAttribute("testerVo");
		System.out.println(jsp);
		modelAndView.setViewName(jsp);
		return modelAndView;
	}
	
}
