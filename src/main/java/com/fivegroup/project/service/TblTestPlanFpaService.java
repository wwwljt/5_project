package com.fivegroup.project.service;


import com.fivegroup.project.entity.QuestionFpa;
import com.fivegroup.project.entity.TblTestPlanFpa;
import com.fivegroup.project.entity.TblTesterFpa;
import com.fivegroup.project.entity.vo.TesterVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TblTestPlanFpaService {
	//查询所有并分页
	public List<TblTestPlanFpa> getAllTTp(@Param("begin") int begin, @Param("limit") int limit, TblTestPlanFpa tblTestPlanFpa);
	
	//    public List<Question_fpa> getAll();
	//增加
	public Boolean insertTTp(TblTestPlanFpa TblTestPlanFpa);
	
	// 删除
	public Boolean deleteTTp(int id);
	
	// 修改
	public Boolean updateTTp(TblTestPlanFpa TblTestPlanFpa);
	
	//    // 模糊查询
	//    public List<Question_fpa> searchTTp(Question_fpa TblTestPlanFpa);
	// 查询总条数
	public int countTTp(TblTestPlanFpa TblTestPlanFpa);
	
	/**
	 * 根据 手机号查找 测试计划
	 *
	 * @param phone
	 * @return
	 */
	List<TblTesterFpa> findFpaTesterByPhone(String phone);
	
	/**
	 * 查询所有fpa
	 *
	 * @return
	 */
	List<QuestionFpa> findAllQuestion();
	
	/**
	 * 保存fpa 测试结果
	 *
	 * @param answerList
	 * @param tester
	 * @return
	 */
	String saveTestResult(List<Map<String, Object>> answerList, TesterVo tester);
	/**
	 * 批量插入
	 * @return
	 */
	int insertBatch(List<Map<String,Object>> answerList,Integer testerId);
	/**
	 * 查询测试者结果
	 * @return
	 */
	String seleResult(Integer testerId);
}
