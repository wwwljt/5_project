package com.fivegroup.project.dao;

import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/20  16:37  星期二
 * <p>
 */
public interface TblTestResultSdsDao {
	/**
	 * 根据 id 批量删除
	 * @param ids
	 * @return
	 */
	Integer deleteById(@Param("ids") Integer[] ids);
}
