package com.fivegroup.project.controller;

import com.fivegroup.project.entity.TblRole;
import com.fivegroup.project.entity.vo.TblRoleVo;
import com.fivegroup.project.service.TblRoleService;
import com.fivegroup.project.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/16  8:45  星期五
 * <p>
 */
@RestController
@RequestMapping("/system/role")
public class TblRoleController {
	@Autowired
	private TblRoleService tblRoleService;
	
	/**
	 * 获取所有角色
	 *
	 * @return
	 */
	@GetMapping("/getRoleAll")
	public Result getRoleAll() {
		List<TblRole> tblRoleList = tblRoleService.getRoleAll();
		return Result.ok(tblRoleList);
	}
	
	/**
	 * 分页条件查询
	 *
	 * @param page
	 * @param limit
	 * @param tblRole
	 * @return
	 */
	@GetMapping("/getRolePage")
	public Result getRolePage(Integer page, Integer limit, TblRole tblRole) {
		System.out.println("page = " + page);
		System.out.println("limit = " + limit);
		System.out.println("tblRole = " + tblRole);
		// 根据条件获取总记录数
		Integer count = tblRoleService.getRoleCount(tblRole);
		// 获取分页数据
		List<TblRole> tblRoleList = tblRoleService.getRolePage(page, limit, tblRole);
		return Result.ok(tblRoleList, count);
	}
	
	/**
	 * 删除
	 *
	 * @param id
	 * @return
	 */
	@DeleteMapping("/deleteRole/{id}")
	public Result deleteRole(@PathVariable Integer id) {
		System.out.println("id = " + id);
		Integer count = tblRoleService.deleteRole(id);
		return Result.ok(count);
	}
	
	/**
	 * 保存修改
	 *
	 * @param tblRoleVo
	 * @return
	 */
	@PostMapping("/saveorupdate")
	public Result saveOrUpdateRole(TblRoleVo tblRoleVo, HttpServletRequest request) {
		System.out.println("tblRoleVo = " + tblRoleVo);
		Integer result = tblRoleService.saveOrUpdate(tblRoleVo, request);
		return Result.ok(result);
	}
	
	/**
	 * 保存
	 *
	 * @param tblRoleVo
	 * @return
	 */
	@PostMapping("/save")
	public Result save(TblRoleVo tblRoleVo, HttpServletRequest request) {
		System.out.println("tblRoleVo = " + tblRoleVo);
		Integer result = tblRoleService.save(tblRoleVo, request);
		return Result.ok(result);
	}
	
	/**
	 * 修改
	 *
	 * @param tblRoleVo
	 * @return
	 */
	@PostMapping("/update")
	public Result update(TblRoleVo tblRoleVo, HttpServletRequest request) {
		System.out.println("tblRoleVo = " + tblRoleVo);
		Integer result = tblRoleService.update(tblRoleVo, request);
		return Result.ok(result);
	}
}
