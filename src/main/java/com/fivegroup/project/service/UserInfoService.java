package com.fivegroup.project.service;

import com.fivegroup.project.entity.Userinfo;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/13  20:03  星期二
 * <p>
 */
public interface UserInfoService {
	/**
	 * 登录的方法
	 *
	 * @param username
	 * @param password
	 * @return
	 */
	Userinfo login(String username, String password);
	
	/**
	 * 根据用户名查询
	 *
	 * @param userName
	 * @return
	 */
	Userinfo getUserOne(String userName);
}
