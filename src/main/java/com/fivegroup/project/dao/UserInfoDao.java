package com.fivegroup.project.dao;

import com.fivegroup.project.entity.Userinfo;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/13  20:07  星期二
 * <p>
 */
public interface UserInfoDao {
	/**
	 * 登录的方法
	 *
	 * @param username
	 * @param password
	 * @return
	 */
	Userinfo login(@Param("username") String username, @Param("password") String password);
	
	/**
	 * 根据用户名查询
	 * @param userName
	 * @return
	 */
	Userinfo getUserOne(@Param("userName") String userName);
}
