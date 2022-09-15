package com.fivegroup.project.filter;


import com.fivegroup.project.util.JwtHelper;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 登录拦截器
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/8/17  10:43  星期三
 * <p>
 */


@WebFilter(filterName = "LoginFilter", value = "/*")
public class LoginFilter implements Filter {
	@Override
	public void init(FilterConfig config) throws ServletException {
		System.out.println(" init  ");
	}
	
	@Override
	public void destroy() {
		System.out.println("销毁");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
		System.out.println("登录拦截器执行了！！！");
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		//判断访问资源路径是否和登录注册相关
		//1,在数组中存储登陆和注册相关的资源路径
		String[] urls = {"/login.html", "/img/", "/css/", "/layui/", "/js/", "/user/login",};
		// 获取 当前访问的资源路径
		String url = httpServletRequest.getRequestURL().toString();
		// 遍历数组， 获取到每一个需要放行的资源路径是否包含，需要放行的资源路径
		for (String s : urls) {
			//4,判断当前访问的资源路径字符串是否包含要放行的的资源路径字符串
            /*
                比如当前访问的资源路径是  /brand-demo/login.jsp
                而字符串 /brand-demo/login.jsp 包含了  字符串 /login.jsp ，所以这个字符串就需要放行
            */
			if (url.contains(s)) {
				// 找到了 放行
				chain.doFilter(request, response);
				// 结束循环
				return;
			}
		}
		HttpSession session = httpServletRequest.getSession();
		String  token = (String) session.getAttribute("token");
		System.out.println("token -----= " + token);
		boolean expiration = JwtHelper.isExpiration(token);
		System.out.println("expiration = " + expiration);
		if (expiration) {
			System.out.println("请登录！！！！");
			// 跳转到 LoginServlet
			httpServletRequest.getRequestDispatcher("login.html").forward(httpServletRequest, response);
		} else {
			// 放行
			chain.doFilter(request, response);
		}
		
	}
}
