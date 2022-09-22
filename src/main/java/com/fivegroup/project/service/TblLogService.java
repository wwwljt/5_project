package com.fivegroup.project.service;

import com.fivegroup.project.entity.TblLog;

import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/21  17:27  星期三
 * <p>
 */
public interface TblLogService {
	/**
	 * 添加日志
	 * @param tblLog
	 * @return
	 */
	Integer insert(TblLog tblLog);
	
	/**
	 * 获取总记录数
	 * @return
	 */
	Integer getLogCount();
	
	/**
	 *
	 * @param page
	 * @param limit
	 * @return
	 */
	List<TblLog> getDeptPage(Integer page, Integer limit);
}
