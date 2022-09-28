package com.fivegroup.project.service;

import com.fivegroup.project.entity.Userinfo;
import com.fivegroup.project.entity.vo.UserinfoVo;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
	
	/**
	 * 根据 条件获取分页总记录数
	 *
	 * @param userInfo
	 * @return
	 */
	Integer getUserInfoCount(Userinfo userInfo);
	
	/**
	 * 获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param userInfo
	 * @return
	 */
	List<UserinfoVo> getUserInfoPage(Integer page, Integer limit, Userinfo userInfo);
	
	/**
	 * 保存获取修改
	 *
	 * @param userinfo
	 * @param request
	 * @return
	 */
	Integer saveOrUpdate(Userinfo userinfo, HttpServletRequest request);
	
	/**
	 * 根据 用户名和 id 判断用户是否存在
	 *
	 * @param userinfo
	 * @return
	 */
	Userinfo userCheck(Userinfo userinfo);
	
	/**
	 * 批量删除
	 *
	 * @param userid
	 * @return
	 */
	Integer deleteBatch(String userid);
	
	/**
	 * 获取所有用户
	 *
	 * @return
	 */
	List<Userinfo> getUserAll();
}
