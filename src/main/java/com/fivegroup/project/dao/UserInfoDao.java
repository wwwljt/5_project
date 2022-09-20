package com.fivegroup.project.dao;

import com.fivegroup.project.entity.Userinfo;
import com.fivegroup.project.entity.vo.UserinfoVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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
	/**
	 * 根据 条件获取分页总记录数
	 * @param userInfo
	 * @return
	 */
	Integer getUserInfoCount(@Param("userInfo") Userinfo userInfo);
	
	/**
	 * 获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param userInfo
	 * @return
	 */
	List<UserinfoVo> getUserInfoPage(@Param("page") Integer page, @Param("limit") Integer limit, @Param("userInfo") Userinfo userInfo);
	
	/**
	 * 保存用户
	 * @param userinfo
	 * @return
	 */
	Integer save(@Param("userinfo") Userinfo userinfo);
	
	/**
	 * 修改
	 * @param userinfo
	 * @return
	 */
	Integer update(@Param("userinfo") Userinfo userinfo);
	/**
	 * 根据 用户名和 id 判断用户是否存在
	 *
	 * @param userinfo
	 * @return
	 */
	Userinfo userCheck(@Param("userinfo") Userinfo userinfo);
	/**
	 * 批量删除
	 * @param userid
	 * @return
	 */
	Integer deleteBatch(@Param("userid") String userid);
}
