package com.fivegroup.project.service;

import com.fivegroup.project.entity.TblQuestionSds;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/13  10:48  星期二
 * <p>
 */
public interface TblQuestionSdsService {
	/**
	 * 根据条件获取总记录数
	 *
	 * @param tblQuestionSds
	 * @return
	 */
	Integer getTblQuestionSdsCount(TblQuestionSds tblQuestionSds);
	
	/**
	 * 根据条件获取分页数据
	 *
	 * @param pageNo
	 * @param pageSize
	 * @param tblQuestionSds
	 * @return
	 */
	List<TblQuestionSds> getTblQuestionSdsPageAll(TblQuestionSds tblQuestionSds, Integer pageNo, Integer pageSize);
	/**
	 * 根据 typeId  获取对应的类型
	 *
	 * @param typeId
	 * @return
	 */
	String getTblQuestionSdType(Integer typeId);
	
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	Integer deleteTblQuestionSds(Integer[] ids);
	
	/**
	 * 修改
	 * @param tblQuestionSds
	 * @param request
	 * @return
	 */
	Integer update(TblQuestionSds tblQuestionSds,HttpServletRequest request);
	
	/**
	 * 保存
	 * @param tblQuestionSds
	 * @param request
	 * @return
	 */
	Integer save(TblQuestionSds tblQuestionSds, HttpServletRequest request);
}
