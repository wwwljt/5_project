package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.UserInfoDao;
import com.fivegroup.project.entity.Userinfo;
import com.fivegroup.project.entity.vo.UserinfoVo;
import com.fivegroup.project.service.UserInfoService;
import com.fivegroup.project.util.JwtHelper;
import com.fivegroup.project.util.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

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
	 * 批量删除
	 *
	 * @param userid
	 * @return
	 */
	@Override
	public Integer deleteBatch(String userid) {
		return userInfoDao.deleteBatch(userid);
	}
	
	/**
	 * 获取所有用户
	 *
	 * @return
	 */
	@Override
	public List<Userinfo> getUserAll() {
		return userInfoDao.getUserAll();
	}
	
	/**
	 * 根据 用户名和 id 判断用户是否存在
	 *
	 * @param userinfo
	 * @return
	 */
	@Override
	public Userinfo userCheck(Userinfo userinfo) {
		return userInfoDao.userCheck(userinfo);
	}
	
	/**
	 * 保存获取修改
	 *
	 * @param userinfo
	 * @param request
	 * @return
	 */
	@Override
	public Integer saveOrUpdate(Userinfo userinfo, HttpServletRequest request) {
		Integer userid = userinfo.getUserid();
		String username = JwtHelper.getUsername(request);
		userinfo.setUpdateBy(username);
		userinfo.setUpdateTime(new Date());
		if (userinfo.getPassword() != null) {
			String salt = MD5.getSalt();
			System.out.println("+++++++++++++++++++ salt = " + salt);
			System.out.println("userinfo.getPassword() = " + userinfo.getPassword());
			String password = MD5.encrypt(userinfo.getPassword() + salt);
			userinfo.setPassword(password);
			userinfo.setSalt(salt);
			System.out.println("++++++++++++++++++++ password = " + password);
		}
		if (userinfo.getAvatar() == null) {
			userinfo.setAvatar("https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png");
		}
		Integer result;
		if (userid == null || userid == 0) {
			userinfo.setCreateBy(username);
			userinfo.setUpdateTime(new Date());
			result = userInfoDao.save(userinfo);
		} else {
			result = userInfoDao.update(userinfo);
		}
		return result;
	}
	
	/**
	 * 获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param userInfo
	 * @return
	 */
	@Override
	public List<UserinfoVo> getUserInfoPage(Integer page, Integer limit, Userinfo userInfo) {
		page = (page - 1) * limit;
		List<UserinfoVo> userInfoPage = userInfoDao.getUserInfoPage(page, limit, userInfo);
		return userInfoPage;
	}
	
	/**
	 * 根据 条件获取分页总记录数
	 *
	 * @param userInfo
	 * @return
	 */
	@Override
	public Integer getUserInfoCount(Userinfo userInfo) {
		return userInfoDao.getUserInfoCount(userInfo);
	}
	
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
		Userinfo userinfo = userInfoDao.getSalt(username);
		String salt = userinfo.getSalt();
		System.out.println("--------------------------salt " + salt);
		password = MD5.encrypt(password + salt);
		System.out.println("----------------------password = " + password);
		// 对密码进行加密
		//		password = MD5.encrypt(password);
		return userInfoDao.login(username, password);
	}
}
