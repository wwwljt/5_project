package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblMenu;
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

//	Integer updateMenu(@Param("roleId") Integer roleId, @Param("menus") Integer[] menus);
	
	/**
	 * 根据 roleId 删除
	 *
	 * @param roleId
	 * @return
	 */
	Integer deleteMenuByRoleId(@Param("roleId") Integer roleId);
	
	/**
	 * 修改菜单
	 *
	 * @param roleId
	 * @param menus
	 * @return
	 */
	Integer insertMenu(@Param("roleId") Integer roleId, @Param("menus") Integer[] menus);
	
	/**
	 * 获取所有菜单
	 *
	 * @return
	 */
	List<TblMenu> getMenuAll();

	
	
	/**
	 * 根据 id 获取 menu
	 * @param id
	 * @return
	 */

	
	TblMenu getMenuByMenuId(@Param("id") Integer id);
	/**
	 * 根据 id 获取 父类名称
	 *
	 * @param id
	 * @return
	 */
	TblMenu getParentNameByMenuId(@Param("id") Integer id);
	
	/**
	 * 保存
	 * @param tbMenu
	 * @return
	 */
	Integer save(@Param("tbMenu") TblMenu tbMenu);
	
	/**
	 * 修改
	 * @param tbMenu
	 * @return
	 */
	Integer update(@Param("tbMenu") TblMenu tbMenu);
	/**
	 * 删除
	 * @param menuId
	 * @return
	 */
	Integer delete(@Param("menuId") Integer menuId);
}
