package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblQuestionSasDao;
import com.fivegroup.project.entity.TblQuestionSas;
import com.fivegroup.project.service.TblQuestionSasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/13 14:38
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */

@Service
public class TblQuestionSasServiceImpl implements TblQuestionSasService {
	
	@Autowired
	private TblQuestionSasDao tblQuestionSasDao;
	
	
	// 分页查询
	@Override
	public List<TblQuestionSas> findQuestionSas(int page, int limit, String question, String person) {
		
		
		/**
		 * 计算分页   开始索引 = （当前页码 - 1） * 每页显示条数
		 */
		page = (page - 1) * limit;
		
		List<TblQuestionSas> sasDaoAll = tblQuestionSasDao.findQuestionSas(page, limit, question, person);
		
		return sasDaoAll;
		
	}
	
	@Override
	public int selectAll() {
		
		int i = tblQuestionSasDao.selectAll();
		
		return i;
	}
	
	
	// 删除一条数据
	@Override
	public int delTblQuestionSas(List ids) {
		
		int i = tblQuestionSasDao.delTblQuestionSas(ids);
		
		return i;
	}
	
	
	// 添加一条数据
	@Override
	public int addQuestionSas(TblQuestionSas tblQuestionSas) {
		
		tblQuestionSas.setCreateTime(new Date());
		
		int i = tblQuestionSasDao.addQuestionSas(tblQuestionSas);
		
		return i;
	}
	
	// 编辑一条数据
	@Override
	public int editQuestionSas(TblQuestionSas tblQuestionSas) {
		
		tblQuestionSas.setUpdateTime(new Date());
		
		int i = tblQuestionSasDao.editQuestionSas(tblQuestionSas);
		
		return i;
	}
	
	
	// 校验问题是否重复
	@Override
	public String selectComparedQuestion(String question) {
		
		String i = tblQuestionSasDao.selectComparedQuestion(question);
		
		return i;
	}
	
}
