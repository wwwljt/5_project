package com.fivegroup.project.service;

import com.fivegroup.project.entity.TblQuestionSas;
import com.fivegroup.project.entity.TblTestPlanSas;
import com.fivegroup.project.entity.TblTesterSas;
import com.fivegroup.project.entity.vo.TesterVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @author DonaldChen
 * @date 2022/9/15 19:32
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */
public interface TblTestPlanSasService {
	
	/**
	 * 查找所有数据，并分页
	 *
	 * @param page
	 * @param limit
	 */
	List<TblTestPlanSas> findAll(@Param("page") int page, @Param("limit") int limit, @Param("testName") String testName, @Param("person") String person);
	
	
	// 查询条数
	int selectAll();
	
	// 删除一条数据
	int delData(List ids);
	
	
	// 添加一条数据
	int addData(@Param("tblTestPlanSas") TblTestPlanSas tblTestPlanSas);
	
	
	// 编辑一条数据
	int editData(@Param("tblTestPlanSas") TblTestPlanSas tblTestPlanSas);
	
	
	// 校验计划是否重复
	String selectComparedPlan(@Param("plan") String plan);
	
	/**
	 * 根据手机号查询sas
	 *
	 * @param phone
	 * @return
	 */
	List<TblTesterSas> findSasTesterByPhone(String phone);
	
	/**
	 * 查询所有sas
	 *
	 * @return
	 */
	List<TblQuestionSas> findAllQuestion();
	
	/**
	 * sas 保存测试结果
	 *
	 * @param answerList
	 * @param tester
	 * @return
	 */
	String saveTestResult(List<Map<String, Object>> answerList, TesterVo tester);
	
	/**
	 * 批量插入
	 *
	 * @return
	 */
	int insertBatch(List<Map<String, Object>> answerList, Integer testerId);
	
	/**
	 * 查询并测试结果
	 *
	 * @param testerId
	 * @return
	 */
	String seleResult(Integer testerId);
}
