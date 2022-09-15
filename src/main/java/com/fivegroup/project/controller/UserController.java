package com.fivegroup.project.controller;

import com.fivegroup.project.entity.Userinfo;
import com.fivegroup.project.service.UserInfoService;
import com.fivegroup.project.util.JwtHelper;
import com.fivegroup.project.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/13  19:55  星期二
 * <p>
 */
@RestController
@RequestMapping("/user/")
public class UserController {
	@Autowired
	private UserInfoService userInfoService;
	
	/**
	 * 登录
	 *
	 * @param username
	 * @param password
	 * @return
	 */
	@GetMapping("/login")
	public Result login(String username, String password, HttpServletRequest request) {
		System.out.println("username = " + username);
		System.out.println("password = " + password);
		System.out.println("登陆执行");
		Userinfo userInfo = userInfoService.login(username, password);
		if (userInfo == null) {
			throw new RuntimeException("用户名或者密码有误");
		} else {
			request.getSession().setAttribute("token", JwtHelper.createToken(username));
			System.out.println("token = " + JwtHelper.createToken(username));
			return Result.ok("登录成功");
		}
	}
	
	/**
	 * 登录
	 *
	 * @param request
	 * @return
	 */
	@GetMapping("/getUserOne")
	public Result getUserOne(HttpServletRequest request) {
		
		String token = (String) request.getSession().getAttribute("token");
		String userName = JwtHelper.getUserName(token);
		Userinfo userInfo = userInfoService.getUserOne(userName);
		System.out.println("userInfo = " + userInfo);
		if (userInfo == null) {
			throw new RuntimeException("用户不存在");
		} else {
			
			return Result.ok(userInfo);
		}
	}
	

}
