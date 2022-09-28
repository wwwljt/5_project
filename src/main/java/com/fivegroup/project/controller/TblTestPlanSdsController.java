package com.fivegroup.project.controller;

import com.fivegroup.project.entity.TblTestPlanSds;
import com.fivegroup.project.service.TblTestPlanSdsService;
import com.fivegroup.project.util.Result;
import com.fivegroup.project.util.ResultCodeEnum;
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
 * 创建时间: 2022/9/13  10:02  星期二
 * <p>
 */
@RestController
@RequestMapping("/sds/tbltestplan")
public class TblTestPlanSdsController {
	@Autowired
	private TblTestPlanSdsService tblTestPlanSdsService;
	
	/**
	 * 校验计划名称是否重复
	 *
	 * @param plan
	 * @return
	 */
	@GetMapping("/checkPlan/{plan}")
	public Result checkPlan(@PathVariable String plan) {
		TblTestPlanSds tblTestPlanSds = tblTestPlanSdsService.checkPlan(plan);
		return tblTestPlanSds == null ? Result.ok("不重复") : Result.fail("重复");
	}
	
	/**
	 * 获取所有测试计划
	 *
	 * @return
	 */
	@GetMapping("/getTestPlanSdsAll")
	public Result getTestPlanSdsAll() {
		List<TblTestPlanSds> tblTestPlanSdsList = tblTestPlanSdsService.getTestPlanSdsAll();
		return Result.ok(tblTestPlanSdsList);
	}
	
	/**
	 * 保存
	 *
	 * @param tblTestPlanSds
	 * @param request
	 * @return
	 */
	@PostMapping("/save")
	public Result save(TblTestPlanSds tblTestPlanSds, HttpServletRequest request) {
		Integer result = tblTestPlanSdsService.save(tblTestPlanSds, request);
		return Result.ok(result);
	}
	
	/**
	 * 修改
	 *
	 * @param tblTestPlanSds
	 * @return
	 */
	@PostMapping("/update")
	public Result update(TblTestPlanSds tblTestPlanSds, HttpServletRequest request) {
		Integer result = tblTestPlanSdsService.update(tblTestPlanSds, request);
		return Result.ok(result);
	}
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@DeleteMapping("/deleteTblTestPlanSds/{ids}")
	public Result deleteTblQuestionSds(@PathVariable("ids") Integer[] ids) {
		Integer result = tblTestPlanSdsService.deleteTblTestPlanSds(ids);
		return Result.ok(ResultCodeEnum.SUCCESS.getCode());
		
	}
	
	/**
	 * 根据条件获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param tblTestPlanSds
	 * @return
	 */
	@GetMapping("/getTblTestPlanSdsPageAll/")
	public Result<List<TblTestPlanSds>> getTblTestPlanSdsPageAll(Integer page, Integer limit, TblTestPlanSds tblTestPlanSds) {
		// 根据 条件获取总记录数
		Integer count = tblTestPlanSdsService.getTbTestPlanSdsCount(tblTestPlanSds);
		// 获取分页数据
		List<TblTestPlanSds> tblTestPlanSdsList = tblTestPlanSdsService.getTbTestPlanSdsPageAll(tblTestPlanSds, page, limit);
		return Result.ok(tblTestPlanSdsList, count);
	}
	
	
}
