package com.fivegroup.project.controller;

import com.fivegroup.project.entity.Userinfo;
import com.fivegroup.project.entity.vo.UserinfoVo;
import com.fivegroup.project.service.UserInfoService;
import com.fivegroup.project.util.JwtHelper;
import com.fivegroup.project.util.OSSUtil;
import com.fivegroup.project.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

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
@RequestMapping("/system/user/")
public class UserInfoController {
	@Autowired
	private UserInfoService userInfoService;
	
	/**
	 * 上传头像
	 *
	 * @param file
	 * @return
	 */
	@PostMapping("/uploadFileAvatar")
	public Result upload(MultipartFile file) {
		String path = OSSUtil.uploadFileAvatar(file);
		return Result.ok(path);
	}
	
	/**
	 * 批量删除
	 *
	 * @param userid
	 * @return
	 */
	@PostMapping("/deleteBatch")
	public Result deleteBatch(String userid) {
		Integer result = userInfoService.deleteBatch(userid);
		return Result.ok(result);
	}
	
	/**
	 * 根据 用户名和 id 判断用户是否存在
	 *
	 * @param userinfo
	 * @return
	 */
	@GetMapping("/usercheck")
	public Result userCheck(Userinfo userinfo) {
		List<Userinfo> userinfoList = userInfoService.getUserAll();
		for (Userinfo userinfo1 : userinfoList) {
			if (userinfo1.getUserid().equals(userinfo.getUserid())
					    && userinfo1.getUsername().equals(userinfo.getUsername())) {
				return Result.ok();
			} else if (userinfo1.getUsername().equals(userinfo.getUsername())) {
				// 用户已存在
				return Result.fail();
			}
		}
		return Result.ok();
		// 用户已存在
		
		// 用户不存在
		//			return Result.ok();
	}
	
	/**
	 * 保存或修改
	 *
	 * @param userinfo
	 * @return
	 */
	@PostMapping("/saveOrUpdate")
	public Result saveOrUpdate(Userinfo userinfo, HttpServletRequest request) {
		Integer result = userInfoService.saveOrUpdate(userinfo, request);
		return Result.ok();
	}
	
	/**
	 * 登录
	 *
	 * @param username
	 * @param password
	 * @return
	 */
	@GetMapping("/login")
	public Result login(String username, String password, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Userinfo userInfo = userInfoService.login(username, password);
		if (userInfo == null) {
			response.sendRedirect("login.html");
			return Result.fail();
		} else {
			request.getSession().setAttribute("token", JwtHelper.createToken(username));
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
		Userinfo userInfo = null;
		try {
			userInfo = userInfoService.getUserOne(userName);
		} catch (Exception e) {
			System.out.println("e.getMessage() = " + e.getMessage());
		}
		if (userInfo == null) {
			throw new RuntimeException("用户不存在");
		} else {
			return Result.ok(userInfo);
		}
	}
	
	/**
	 * 分页条件查询
	 *
	 * @param page
	 * @param limit
	 * @param userInfo
	 * @return
	 */
	@GetMapping("/getUserInfoPage")
	public Result getUserInfoPage(Integer page, Integer limit, Userinfo userInfo) {
		// 根据 条件获取分页总记录数
		Integer count = userInfoService.getUserInfoCount(userInfo);
		// 获取分页数据
		List<UserinfoVo> userinfoList = userInfoService.getUserInfoPage(page, limit, userInfo);
		return Result.ok(userinfoList, count);
	}
	
}
