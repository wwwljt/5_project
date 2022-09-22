package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.MenuDao;
import com.fivegroup.project.entity.TblMenu;
import com.fivegroup.project.entity.vo.Menu;
import com.fivegroup.project.service.MenuService;
import com.fivegroup.project.util.JwtHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/16  17:50  星期五
 * <p>
 */
@Service
public class MenuServiceImpl implements MenuService {
	@Autowired
	private MenuDao menuDao;
	
	/**
	 * 根据 roleid 获取Menu
	 *
	 * @param roleId
	 * @return
	 */
	@Override
	public List<Menu> getMenuByRoleId(Integer roleId) {
		return menuDao.getMenuByRoleId(roleId);
	}
	
	/**
	 * 根据父级 id 获取 菜单
	 *
	 * @param parentId
	 * @return
	 */
	@Override
	public List<TblMenu> getTestByParentId(Integer parentId, Integer roleId) {
		return menuDao.getTestByParentId(parentId,roleId);
	}
	
	/**
	 * 删除
	 *
	 * @param menuId
	 * @return
	 */
	@Override
	public Integer delete(Integer menuId) {
		return menuDao.delete(menuId);
	}
	
	/**
	 * 保存或修改
	 *
	 * @param tbMenu
	 * @param request
	 * @return
	 */
	@Override
	public Integer saveOrUpdate(TblMenu tbMenu, HttpServletRequest request) {
		Integer menuId = tbMenu.getMenuId();
		String username = JwtHelper.getUsername(request);
		tbMenu.setUpdateBy(username);
		tbMenu.setUpdateTime(new Date());
		Integer result;
		if (menuId == null || menuId == 0) {
			// 添加
			tbMenu.setCreateBy(username);
			tbMenu.setCreateTime(new Date());
			result = menuDao.save(tbMenu);
		} else {
			result = menuDao.update(tbMenu);
		}
		return result;
	}
	
	/**
	 * 根据 id 获取 父类名称
	 *
	 * @param id
	 * @return
	 */
	@Override
	public TblMenu getParentNameById(Integer id) {
		TblMenu tblMenu = menuDao.getMenuByMenuId(id);
		System.out.println("tblMenu-----------------dao = " + tblMenu);
		if (tblMenu.getParentId() == 0) {
			TblMenu tblMenu1 = new TblMenu();
			tblMenu1.setMenuName("没有上级目录");
			return tblMenu1;
		} else {
			return menuDao.getMenuByMenuId(tblMenu.getParentId());
		}
		
	}
	
	/**
	 * 获取所有菜单
	 *
	 * @return
	 */
	@Override
	public List<TblMenu> getMenuAll() {
		return menuDao.getMenuAll();
	}
	
	/**
	 * 根据 id 获取树形结构
	 *
	 * @return
	 */
	@Override
	public List<Menu> getTree() {
		
		return menuDao.getTree(0);
	}
	
	
	/**
	 * 根据 roleId 获取 menuId
	 *
	 * @param roleId
	 * @return
	 */
	@Override
	public Integer[] getMenuId(Integer roleId) {
		return menuDao.getMenuId(roleId);
	}
}
