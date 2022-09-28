package com.fivegroup.project.dao;

import com.fivegroup.project.entity.QuestionFpa;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface QuestionFpaMapper {
	//查询所有并分页
	public List<QuestionFpa> getAllQF(@Param("begin") int begin, @Param("limit") int limit, @Param("questionFpa") QuestionFpa questionFpa);
	
	//
	//增加
	public Boolean insertQF(QuestionFpa questionFpa);
	
	// 删除
	public Boolean deleteQF(int[] id);
	
	// 修改
	public Boolean updateQF(QuestionFpa questionFpa);
	
	// 题目唯一校验
	public List<QuestionFpa> searchQF(QuestionFpa questionFpa);
	
	// 查询总条数
	public int countQF(QuestionFpa questionFpa);
}
