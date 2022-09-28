package com.fivegroup.project.controller;

import com.fivegroup.project.entity.TblTestPlanFpa;
import com.fivegroup.project.service.TblTestPlanFpaService;
import com.fivegroup.project.util.ResultBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

/**
 * @ClassName Question_fpaController
 * @Description 进行增删改查操作
 * @Author WangDeSheng
 * @Date 2022/9/12 20:38
 * @Version 1.0
 */
@RestController
@RequestMapping("/TblTestPlanFpa")
public class TblTestPlanFpaController {
	@Autowired
	private TblTestPlanFpaService TTpService;
	
	@RequestMapping("/getAll")
	public ResultBean<TblTestPlanFpa> getAll(@RequestParam("page") int page, @RequestParam("limit") int limit, TblTestPlanFpa TblTestPlanFpa) {
		int bgein = (page - 1) * limit;
		List<TblTestPlanFpa> all = TTpService.getAllTTp(bgein, limit, TblTestPlanFpa);
		ResultBean<TblTestPlanFpa> rb = new ResultBean<>();
		rb.setCode(0);
		rb.setMsg("");
		rb.setCount(TTpService.countTTp(TblTestPlanFpa));
		rb.setData(all);
		return rb;
	}
	
	@RequestMapping("/del")
	public Boolean del(@RequestParam("id") int[] id) throws IOException {
		
		return TTpService.deleteTTp(id);
	}
	
	@RequestMapping("/update")
	public Boolean update(TblTestPlanFpa TblTestPlanFpa) {
		return TTpService.updateTTp(TblTestPlanFpa);
	}
	
	@RequestMapping("/insert")
	public Boolean insert(TblTestPlanFpa tblTestPlanFpa) {
		List<TblTestPlanFpa> search = TTpService.search();
		
		int i = (int) ((Math.random() * 9 + 1) * 100000);
		for (TblTestPlanFpa item : search
		) {
			if (item.getTestCode() == i) {
				i = (int) ((Math.random() * 9 + 1) * 100000);
			}
		}
		tblTestPlanFpa.setTestCode(i);
		Boolean aBoolean = TTpService.insertTTp(tblTestPlanFpa);
		
		return aBoolean;
	}
	
	@RequestMapping("/deleteMore")
	public Boolean deleteMore(int[] idList) {
		return TTpService.deleteTTp(idList);
	}
	
	@RequestMapping("/search")
	public Boolean search(TblTestPlanFpa tblTestPlanFpa) {
		
		if (TTpService.searchTTp(tblTestPlanFpa).size() > 0) {
			return false;
		}
		return true;
	}
}
