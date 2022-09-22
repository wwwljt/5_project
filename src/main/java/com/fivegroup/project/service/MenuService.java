package com.fivegroup.project.service;

import com.fivegroup.project.entity.TblMenu;
import com.fivegroup.project.entity.vo.Menu;

import javax.servlet.http.HttpServletRequest;
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
	 *
	 * @return
	 */
	List<Menu> getTree();
	
	/**
	 * 根据 roleId 获取 menuId
	 *
	 * @param roleId
	 * @return
	 */
	Integer[] getMenuId(Integer roleId);
	
	/**
	 * 获取所有菜单
	 *
	 * @return
	 */
	List<TblMenu> getMenuAll();
	
	/**
	 * 根据 id 获取 父类名称
	 *
	 * @param id
	 * @return
	 */
	TblMenu getParentNameById(Integer id);
	
	/**
	 * 保存或修改
	 *
	 * @param tbMenu
	 * @param request
	 * @return
	 */
	Integer saveOrUpdate(TblMenu tbMenu, HttpServletRequest request);
	
	/**
	 * 删除
	 * @param menuId
	 * @return
	 */
	Integer delete(Integer menuId);
	
	/**
	 * 根据父级 id 获取 菜单
	 * @param parentId
	 * @return
	 */
	List<TblMenu> getTestByParentId(Integer parentId, Integer roleId);
	
	/**
	 * 根据 roleid 获取Menu
	 * @param roleId
	 * @return
	 */
	List<Menu> getMenuByRoleId(Integer roleId);
}
