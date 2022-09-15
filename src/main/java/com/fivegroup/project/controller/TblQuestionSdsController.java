package com.fivegroup.project.controller;

import com.fivegroup.project.entity.TblQuestionSds;
import com.fivegroup.project.service.TblQuestionSdsService;
import com.fivegroup.project.util.Result;
import com.fivegroup.project.util.ResultBean;
import com.fivegroup.project.util.ResultCodeEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Collections;
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
@RequestMapping("/sds/tblquestion")
public class TblQuestionSdsController {
	@Autowired
	private TblQuestionSdsService tblQuestionSdsService;
	
	/**
	 * 修改
	 *
	 * @param tblQuestionSds
	 * @return
	 */
	@PostMapping("/update")
	public Result update(TblQuestionSds tblQuestionSds, HttpServletRequest request) {
		System.out.println("tblQuestionSds = " + tblQuestionSds);
		Integer result = tblQuestionSdsService.update(tblQuestionSds, request);
		return Result.ok(result);
	}
	
	/**
	 * 保存
	 *
	 * @param tblQuestionSds
	 * @return
	 */
	@PostMapping("/save")
	public Result save(TblQuestionSds tblQuestionSds, HttpServletRequest request) {
		System.out.println("tblQuestionSds = " + tblQuestionSds);
		Integer result = tblQuestionSdsService.save(tblQuestionSds, request);
		return Result.ok(result);
	}
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@DeleteMapping("/deleteTblQuestionSds/{ids}")
	public Result deleteTblQuestionSds(@PathVariable("ids") Integer[] ids) {
		System.out.println("id = " + Arrays.toString(ids));
		Integer result = tblQuestionSdsService.deleteTblQuestionSds(ids);
		System.out.println("result = " + result);
		return Result.ok(ResultCodeEnum.SUCCESS.getCode());
		
	}
	
	/**
	 * 根据条件获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param tblQuestionSds
	 * @return
	 */
	@GetMapping("/getTblQuestionSdsPageAll/")
	public Result<List<TblQuestionSds>> getTblQuestionSdsPageAll(Integer page, Integer limit, TblQuestionSds tblQuestionSds) {
		System.out.println("page = " + page);
		System.out.println("limit = " + limit);
//		TblQuestionSds tblQuestionSds = new TblQuestionSds();
//		tblQuestionSds.setId(id);
//		tblQuestionSds.setCreateBy(createBy);
		System.out.println("tblQuestionSds = " + tblQuestionSds);
		// 根据 条件获取总记录数
		Integer count = tblQuestionSdsService.getTblQuestionSdsCount(tblQuestionSds);
		// 获取分页数据
		List<TblQuestionSds> tblQuestionSdsList = tblQuestionSdsService.getTblQuestionSdsPageAll(tblQuestionSds, page, limit);
		System.out.println("tblQuestionSdsList = " + tblQuestionSdsList);
		return Result.ok(tblQuestionSdsList, count);
	}
	
	
	/**
	 * 根据 typeId  获取对应的类型
	 *
	 * @param typeId
	 * @return
	 */
	@GetMapping("/getTblQuestionSdsType")
	public ResultBean getTblQuestionSdsType(Integer typeId) {
		String type = tblQuestionSdsService.getTblQuestionSdType(typeId);
		ResultBean resultBean = new ResultBean<>();
		resultBean.setData(Collections.singletonList(type));
		resultBean.setCount(20);
		resultBean.setCode(0);
		resultBean.setMsg("成功");
		return resultBean;
	}
	
}
