package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblLog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lastwhisper
 * @desc
 * @email gaojun56@163.com
 */
public interface TblLogDao {
	/**
	 * 添加日志
	 *
	 * @param tblLog
	 * @return
	 */
	Integer insert(@Param("tblLog") TblLog tblLog);
	
	/**
	 * 获取总记录数
	 *
	 * @return
	 */
	Integer getLogCount();
	
	/**
	 * 日志分页
	 *
	 * @return
	 */
	List<TblLog> getDeptPage(@Param("page") Integer page, @Param("limit") Integer limit);
}
