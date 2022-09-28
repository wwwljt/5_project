package com.fivegroup.project.dao;

import com.fivegroup.project.entity.ViewTestResultFpa;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/27  11:40  星期二
 * <p>
 */
public interface ViewTestResultFpaDao {
	/**
	 * 查找测试结果
	 *
	 * @param testerId
	 * @return
	 */
	ViewTestResultFpa seleResultFpa(@Param("testerId") Integer testerId);
}
