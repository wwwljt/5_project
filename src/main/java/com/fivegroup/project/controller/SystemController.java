package com.fivegroup.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
		return "forward:login.html";
	}
	

}
