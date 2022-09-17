package com.fivegroup.project.service;

import com.fivegroup.project.entity.vo.Menu;

import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/16  17:49  星期五
 * <p>
 */
public interface MenuService {
	/**
	 * 根据 id 获取树形结构
	 * @return
	 */
	List<Menu> getTree();
	
	/**
	 * 根据 roleId 获取 menuId
	 * @param roleId
	 * @return
	 */
	Integer[] getMenuId(Integer roleId);
}
