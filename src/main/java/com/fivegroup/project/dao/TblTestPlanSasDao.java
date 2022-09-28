package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblQuestionSas;
import com.fivegroup.project.entity.TblTestPlanSas;
import com.fivegroup.project.entity.TblTesterSas;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @author DonaldChen
 * @date 2022/9/15 19:29
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */
public interface TblTestPlanSasDao {
	
	/**
	 * 查找所有数据，并分页
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
	 * 根据 手机号查询sas
	 *
	 * @param phone
	 * @return
	 */
	List<TblTesterSas> findSasTesterByPhone(@Param("phone") String phone);
	
	/**
	 * 查询所有sas
	 *
	 * @return
	 */
	List<TblQuestionSas> findAllQuestion();
	
	/**
	 * 保存测试者
	 *
	 * @param tblTesterSas
	 * @return
	 */
	Integer insert(@Param("tblTesterSas") TblTesterSas tblTesterSas);
	
	/**
	 * 批量插入数据
	 *
	 * @param answerList
	 * @param testerId
	 * @return
	 */
	int insertBatch(@Param("answerList") List<Map<String, Object>> answerList, @Param("testerId") Integer testerId);
}
