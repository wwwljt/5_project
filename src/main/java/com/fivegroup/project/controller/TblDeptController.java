package com.fivegroup.project.controller;

import com.fivegroup.project.entity.TblDept;
import com.fivegroup.project.service.TblDeptService;
import com.fivegroup.project.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/15  18:24  星期四
 * <p>
 */
@RestController
@RequestMapping("/system/dept")
public class TblDeptController {
	@Autowired
	private TblDeptService tblDeptService;
	
	/**
	 * 根据 id查询部门
	 *
	 * @return
	 */
	@GetMapping("/getTblDeptById")
	public Result getTblDeptById(Integer id) {
		TblDept tblDept = tblDeptService.getTblDeptById(id);
		return Result.ok(tblDept);
	}
	
	/**
	 * 获取所有部门数据
	 *
	 * @return
	 */
	@GetMapping("/getDeptAll")
	public Result getDeptAll() {
		List<TblDept> tblDeptList = tblDeptService.getDptAll();
		return Result.ok(tblDeptList);
	}
	
	/**
	 * 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@DeleteMapping("/deleteBatch/{ids}")
	public Result deleteBatch(@PathVariable("ids") Integer[] ids) {
		System.out.println("ids = " + Arrays.toString(ids));
		Integer result = tblDeptService.deleteBatch(ids);
		return Result.ok(result);
	}
	
	/**
	 * 修改 或保存
	 *
	 * @param tblDept
	 * @return
	 */
	@PostMapping("/saveorupdate")
	public Result saveOrUpdate(TblDept tblDept, HttpServletRequest request) {
		Integer count = tblDeptService.saveOrUpdate(tblDept, request);
		return Result.ok(count);
	}
	
	/**
	 * 部门条件分页查询
	 *
	 * @param page
	 * @param limit
	 * @param tblDept
	 * @return
	 */
	@RequestMapping("/getDeptPage")
	public Result getDeptPage(Integer page, Integer limit, TblDept tblDept) {
		System.out.println("page = " + page);
		System.out.println("limit = " + limit);
		
		// 根据条件获取分页总条数
		Integer count = tblDeptService.getDeptPageCount(tblDept);
		// 获取分页数据
		List<TblDept> tblDeptList = tblDeptService.getDeptPage(page, limit, tblDept);
		return Result.ok(tblDeptList, count);
	}
}
