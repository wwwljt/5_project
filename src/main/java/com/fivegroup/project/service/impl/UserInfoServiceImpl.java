package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.UserInfoDao;
import com.fivegroup.project.entity.Userinfo;
import com.fivegroup.project.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/13  20:06  星期二
 * <p>
 */
@Service
public class UserInfoServiceImpl implements UserInfoService {
	@Autowired
	private UserInfoDao userInfoDao;
	
	/**
	 * 根据用户名查询
	 *
	 * @param userName
	 * @return
	 */
	@Override
	public Userinfo getUserOne(String userName) {
		return userInfoDao.getUserOne(userName);
	}
	
	/**
	 * 登录的方法
	 *
	 * @param username
	 * @param password
	 * @return
	 */
	@Override
	public Userinfo login(String username, String password) {
		// 对密码进行加密
//		password = MD5.encrypt(password);
		return userInfoDao.login(username, password);
	}
}
