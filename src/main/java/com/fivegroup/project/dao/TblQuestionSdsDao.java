package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblQuestionSds;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/13  10:55  星期二
 * <p>
 */
public interface TblQuestionSdsDao {
	
	/**
	 * 根据条件获取总记录数
	 *
	 * @param tblQuestionSds
	 * @return
	 */
	Integer getTblQuestionSdsCount(@Param("tblQuestionSds") TblQuestionSds tblQuestionSds);
	
	/**
	 * 根据条件获取分页数据
	 *
	 * @param pageNo
	 * @param pageSize
	 * @param tblQuestionSds
	 * @return
	 */
	List<TblQuestionSds> getTblQuestionSdsPageAll(@Param("tblQuestionSds") TblQuestionSds tblQuestionSds, @Param("pageNo") Integer pageNo, @Param("pageSize") Integer pageSize);
	
	/**
	 * 根据 typeId  获取对应的类型
	 *
	 * @param typeId
	 * @return
	 */
	String getTblQuestionSdType(@Param("typeId") Integer typeId);
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	Integer deleteTblQuestionSds(@Param("ids") Integer[] ids);
	
	/**
	 * 修改
	 *
	 * @param tblQuestionSds
	 * @return
	 */
	Integer update(@Param("tblQuestionSds") TblQuestionSds tblQuestionSds);
	
	/**
	 * 保存
	 *
	 * @param tblQuestionSds
	 * @return
	 */
	Integer save(@Param("tblQuestionSds") TblQuestionSds tblQuestionSds);
	
	/**
	 * 校验题目是否重复
	 *
	 * @param question
	 * @return
	 */
	TblQuestionSds checkQuestion(@Param("question") String question);
}
