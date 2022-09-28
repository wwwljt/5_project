package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblQuestionSds;
import com.fivegroup.project.entity.TblTestPlanSds;
import com.fivegroup.project.entity.TblTesterSds;
import com.fivegroup.project.entity.ViewTestPlan;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/14  17:11  星期三
 * <p>
 */
public interface TblTestPlanSdsDao {
	/**
	 * 根据条件查询总记录数
	 *
	 * @param tblTestPlanSds
	 * @return
	 */
	Integer getTbTestPlanSdsCount(@Param("tblTestPlanSds") TblTestPlanSds tblTestPlanSds);
	
	/**
	 * 根据条件获取分页数据
	 *
	 * @param tblTestPlanSds
	 * @param page
	 * @param limit
	 * @return
	 */
	List<TblTestPlanSds> getTbTestPlanSdsPageAll(@Param("tblTestPlanSds") TblTestPlanSds tblTestPlanSds, @Param("page") Integer page, @Param("limit") Integer limit);
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	Integer deleteTblTestPlanSds(@Param("ids") Integer[] ids);
	
	/**
	 * 修改
	 *
	 * @param tblTestPlanSds
	 * @return
	 */
	Integer update(@Param("tblTestPlanSds") TblTestPlanSds tblTestPlanSds);
	
	/**
	 * 保存
	 *
	 * @param tblTestPlanSds
	 * @return
	 */
	Integer save(@Param("tblTestPlanSds") TblTestPlanSds tblTestPlanSds);
	
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
	ViewTestPlan queryByTestCode(@Param("testCode") String testCode);
	
	/**
	 * 根据 手机号查找测试计划
	 *
	 * @param phone
	 * @return
	 */
	List<TblTesterSds> findSdsTesterByPhone(@Param("phone") String phone);
	
	/**
	 * 查询所偶 sds
	 *
	 * @return
	 */
	List<TblQuestionSds> findAllQuestion();
	
	/**
	 * 保存测试者
	 *
	 * @param tblTesterSds
	 * @return
	 */
	Integer insert(@Param("tblTesterSds") TblTesterSds tblTesterSds);
	
	/**
	 * 批量插入测试答案
	 *
	 * @param answerList
	 * @param testerId
	 * @return
	 */
	int insertBatch(@Param("answerList") List<Map<String, Object>> answerList, @Param("testerId") Integer testerId);
	
	/**
	 * 校验计划名称是否重复
	 *
	 * @param plan
	 * @return
	 */
	TblTestPlanSds checkPlan(@Param("plan") String plan);
}
