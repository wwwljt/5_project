package com.fivegroup.project.controller;

import com.fivegroup.project.entity.TblLog;
import com.fivegroup.project.service.TblLogService;
import com.fivegroup.project.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/21  20:41  星期三
 * <p>
 */
@RestController
@RequestMapping("/log")
public class TblLogController {
	@Autowired
	private TblLogService tblLogService;
	
	@GetMapping("/getLogPage")
	public Result getLogPage(Integer page, Integer limit) {
		System.out.println("page = " + page);
		System.out.println("limit = " + limit);
		
		// 根据条件获取分页总条数
		Integer count = tblLogService.getLogCount();
		// 获取分页数据
		List<TblLog> tblLogs =tblLogService.getDeptPage(page, limit);
		return Result.ok(tblLogs, count);
	}
}
