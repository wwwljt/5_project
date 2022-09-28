package com.fivegroup.project.service;

import com.fivegroup.project.entity.TblQuestionSds;
import com.fivegroup.project.entity.TblTestPlanSds;
import com.fivegroup.project.entity.TblTesterSds;
import com.fivegroup.project.entity.ViewTestPlan;
import com.fivegroup.project.entity.vo.TesterVo;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/14  17:04  星期三
 * <p>
 */
public interface TblTestPlanSdsService {
	/**
	 * 根据条件查询总记录数
	 *
	 * @param tblTestPlanSds
	 * @return
	 */
	Integer getTbTestPlanSdsCount(TblTestPlanSds tblTestPlanSds);
	
	/**
	 * 根据条件分页数据
	 *
	 * @param tblTestPlanSds
	 * @param page
	 * @param limit
	 * @return
	 */
	List<TblTestPlanSds> getTbTestPlanSdsPageAll(TblTestPlanSds tblTestPlanSds, Integer page, Integer limit);
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	Integer deleteTblTestPlanSds(Integer[] ids);
	
	/**
	 * 修改
	 *
	 * @param tblTestPlanSds
	 * @param request
	 * @return
	 */
	Integer update(TblTestPlanSds tblTestPlanSds, HttpServletRequest request);
	
	/**
	 * 保存
	 *
	 * @param tblTestPlanSds
	 * @param request
	 * @return
	 */
	Integer save(TblTestPlanSds tblTestPlanSds, HttpServletRequest request);
	
	/**
	 * 获取所有测试计划
	 *
	 * @return
	 */
	List<TblTestPlanSds> getTestPlanSdsAll();
	
	/**
	 * 根据邀请码获取测试计划
	 *
	 * @param testCode
	 * @return
	 */
	ViewTestPlan queryByTestCode(String testCode);
	
	/**
	 * 根据 手机号查找测试计划
	 *
	 * @param phone
	 * @return
	 */
	List<TblTesterSds> findSdsTesterByPhone(String phone);
	
	/**
	 * 查询所偶 sds
	 *
	 * @return
	 */
	List<TblQuestionSds> findAllQuestion();
	
	/**
	 * 保存sds 测试结果
	 *
	 * @param answerList
	 * @param tester
	 * @return
	 */
	String saveTestResult(List<Map<String, Object>> answerList, TesterVo tester);
	
	/**
	 * 批量插入
	 *
	 * @param answerList
	 * @param testerId
	 * @return
	 */
	int insertBatch(List<Map<String, Object>> answerList, Integer testerId);
	
	/**
	 * 查询测试结果
	 *
	 * @param testerId
	 * @return
	 */
	String seleResult(Integer testerId);
	
	/**
	 * 校验计划名称是否重复
	 *
	 * @param plan
	 * @return
	 */
	TblTestPlanSds checkPlan(String plan);
}
