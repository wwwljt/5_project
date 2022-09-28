package com.fivegroup.project.dao;

import com.fivegroup.project.entity.ViewTestResultSas;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/27  12:03  星期二
 * <p>
 */
public interface ViewTestResultSasDao {
	/**
	 * 查询测试结果
	 * @param testerId
	 * @return
	 */
	ViewTestResultSas selectResultSas(@Param("testerId") Integer testerId);
}
