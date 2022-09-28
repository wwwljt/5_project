package com.fivegroup.project.service;

import com.fivegroup.project.entity.QuestionFpa;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuestionFpaService {
	//查询所有并分页
	public List<QuestionFpa> getAllQF(@Param("begin") int begin, @Param("limit") int limit, QuestionFpa questionFpa);
	
	//增加
	public Boolean insertQF(QuestionFpa questionFpa);
	
	// 删除
	public Boolean deleteQF(int[] id);
	
	// 修改
	public Boolean updateQF(QuestionFpa questionFpa);
	
	public List<QuestionFpa> searchQF(QuestionFpa questionFpa);
	
	// 查询总条数
	public int countQF(QuestionFpa questionFpa);
}
