package com.fivegroup.project.controller;

import com.fivegroup.project.entity.vo.StatisticsVo;
import com.fivegroup.project.entity.vo.TblTestResultVo;
import com.fivegroup.project.service.TblTesterSdsService;
import com.fivegroup.project.util.Result;
import com.fivegroup.project.util.ResultCodeEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
@RequestMapping("/sds/tbltestresult")
public class TblTestResultSdsController {
	@Autowired
	private TblTesterSdsService tblTesterSdsService;
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@DeleteMapping("/deleteTblTestPlanSds/{ids}")
	public Result deleteTblTestResulSds(@PathVariable("ids") Integer[] ids) {
		Integer result = tblTesterSdsService.deleteTblTestResulSds(ids);
		return Result.ok(ResultCodeEnum.SUCCESS.getCode());
		
	}
	
	
	/**
	 * 根据条件获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param tblTestResultVo
	 * @return
	 */
	@GetMapping("/getTblTestResultSdsPageAll")
	public Result<List<TblTestResultVo>> getTblTestResultSdsPageAll(Integer page, Integer limit, TblTestResultVo tblTestResultVo) {
		// 根据 条件获取总记录数
		Integer count = tblTesterSdsService.getTbTestResultSdsCount(tblTestResultVo);
		
		// 获取分页数据
		List<TblTestResultVo> tblTestResultVos = tblTesterSdsService.getTbTestResultSdsPageAll(tblTestResultVo, page, limit);
		return Result.ok(tblTestResultVos, count);
	}
	
	/**
	 * 报表统计
	 *
	 * @return
	 */
	@GetMapping("/getTblTestStatistics")
	public Result getTblTestStatistics() {
		// 获取总记录数
		
		Integer count = tblTesterSdsService.getTblTestCount();
		// 获取统计数据
		StatisticsVo statisticsVo = tblTesterSdsService.getTbTestStatistics();
		statisticsVo.setCount(count);
		return Result.ok(statisticsVo);
	}
	
	
}
