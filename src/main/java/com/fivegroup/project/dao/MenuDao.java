package com.fivegroup.project.dao;

import com.fivegroup.project.entity.vo.Menu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/16  17:51  星期五
 * <p>
 */
public interface MenuDao {
	/**
	 * 根据 id 获取树形结构
	 *
	 * @param parentId
	 * @return
	 */
	List<Menu> getTree(@Param("parentId") Integer parentId);
	/**
	 * 根据 roleId 获取 menuId
	 *
	 * @param roleId
	 * @return
	 */
	Integer[] getMenuId(@Param("roleId") Integer roleId);
}
