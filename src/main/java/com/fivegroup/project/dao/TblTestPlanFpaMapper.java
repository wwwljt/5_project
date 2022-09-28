package com.fivegroup.project.dao;


import com.fivegroup.project.entity.QuestionFpa;
import com.fivegroup.project.entity.TblTestPlanFpa;
import com.fivegroup.project.entity.TblTesterFpa;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TblTestPlanFpaMapper {
	//查询所有并分页
	public List<TblTestPlanFpa> getAllTTp(@Param("begin") int begin, @Param("limit") int limit, @Param("testPlanFpa") TblTestPlanFpa testPlanFpa);
	
	//
	//增加
	public Boolean insertTTp(TblTestPlanFpa testPlanFpa);
	
	// 删除
	public Boolean deleteTTp(int[] id);
	
	public List<TblTestPlanFpa> searchTTp(TblTestPlanFpa tblTestPlanFpa);
	
	public List<TblTestPlanFpa> search();
	
	// 修改
	public Boolean updateTTp(TblTestPlanFpa testPlanFpa);
	
	// 查询总条数
	public int countTTp(TblTestPlanFpa testPlanFpa);
	
	/**
	 * 根据 手机号查找 测试计划
	 *
	 * @param phone
	 * @return
	 */
	List<TblTesterFpa> findFpaTesterByPhone(@Param("phone") String phone);
	
	/**
	 * 查询所有fpa
	 *
	 * @return
	 */
	List<QuestionFpa> findAllQuestion();
	
	/**
	 * fpa保存测试
	 *
	 * @param tblTesterFpa
	 * @return
	 */
	Integer insert(@Param("tblTesterFpa") TblTesterFpa tblTesterFpa);
	
	/**
	 * 批量插入
	 *
	 * @param answerList
	 * @param testerId
	 * @return
	 */
	int insertBatch(@Param("answerList") List<Map<String, Object>> answerList, @Param("testerId") Integer testerId);
}
