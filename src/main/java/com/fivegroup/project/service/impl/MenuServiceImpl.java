package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.MenuDao;
import com.fivegroup.project.entity.vo.Menu;
import com.fivegroup.project.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
