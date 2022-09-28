package com.fivegroup.project.dao;

import com.fivegroup.project.entity.ViewTestResultSds;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/27  14:32  星期二
 * <p>
 */
public interface ViewTestResultSdsDao {
	/**
	 * 查询测试结果
	 * @param testerId
	 * @return
	 */
	ViewTestResultSds selectResultSas(@Param("testerId") Integer testerId);
}
