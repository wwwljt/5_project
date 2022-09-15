package com.fivegroup.project.service;

import com.fivegroup.project.entity.TblTestPlanSds;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
	 * @param ids
	 * @return
	 */
	Integer deleteTblTestPlanSds(Integer[] ids);
	/**
	 * 修改
	 *
	 * @param tblTestPlanSds
	 * @return
	 */
	Integer update(TblTestPlanSds tblTestPlanSds, HttpServletRequest request);
	
	/**
	 * 保存
	 * @param tblTestPlanSds
	 * @param request
	 * @return
	 */
	Integer save(TblTestPlanSds tblTestPlanSds, HttpServletRequest request);
}
