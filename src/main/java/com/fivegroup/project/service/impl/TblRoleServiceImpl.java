package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.MenuDao;
import com.fivegroup.project.dao.TblRoleDao;
import com.fivegroup.project.entity.TblRole;
import com.fivegroup.project.entity.vo.TblRoleVo;
import com.fivegroup.project.service.TblRoleService;
import com.fivegroup.project.util.JwtHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

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
 * 创建时间: 2022/9/16  8:55  星期五
 * <p>
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class TblRoleServiceImpl implements TblRoleService {
	@Autowired
	private TblRoleDao tblRoleDao;
	
	/**
	 * 获取所有角色
	 *
	 * @return
	 */
	@Override
	public List<TblRole> getRoleAll() {
		return tblRoleDao.getRoleAll();
	}
	
	/**
	 * 修改
	 *
	 * @param tblRoleVo
	 * @param request
	 * @return
	 */
	@Override
	public Integer update(TblRoleVo tblRoleVo, HttpServletRequest request) {
		String username = JwtHelper.getUsername(request);
		tblRoleVo.setUpdateBy(username);
		tblRoleVo.setUpdateTime(new Date());
		Integer result = null;
		try {
			// 修改
			result = tblRoleDao.updateRole(tblRoleVo);
			//			int i = 1 / 0;
			result = menuDao.deleteMenuByRoleId(tblRoleVo.getRoleId());
			result = menuDao.insertMenu(tblRoleVo.getRoleId(), tblRoleVo.getMenus());
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return result;
	}
	
	/**
	 * 保存
	 *
	 * @param tblRoleVo
	 * @param request
	 * @return
	 */
	@Override
	public Integer save(TblRoleVo tblRoleVo, HttpServletRequest request) {
		Integer result = null;
		String username = JwtHelper.getUsername(request);
		tblRoleVo.setCreateBy(username);
		tblRoleVo.setCreateTime(new Date());
		tblRoleVo.setUpdateBy(username);
		tblRoleVo.setUpdateTime(new Date());
		// 保存
		result = tblRoleDao.saveRole(tblRoleVo);
		menuDao.insertMenu(tblRoleVo.getRoleId(), tblRoleVo.getMenus());
		return result;
	}
	
	/**
	 * 添加或修改
	 *
	 * @param tblRoleVo
	 * @param request
	 * @return
	 */
	@Override
	public Integer saveOrUpdate(TblRoleVo tblRoleVo, HttpServletRequest request) {
		Integer roleId = tblRoleVo.getRoleId();
		String username = JwtHelper.getUsername(request);
		tblRoleVo.setUpdateBy(username);
		tblRoleVo.setUpdateTime(new Date());
		Integer result = null;
		if (roleId == null || roleId == 0) {
			// 保存
			result = tblRoleDao.saveRole(tblRoleVo);
			result = menuDao.insertMenu(tblRoleVo.getRoleId(), tblRoleVo.getMenus());
		} else {
			try {
				// 修改
				result = tblRoleDao.updateRole(tblRoleVo);
				result = menuDao.deleteMenuByRoleId(tblRoleVo.getRoleId());
				result = menuDao.insertMenu(tblRoleVo.getRoleId(), tblRoleVo.getMenus());
			} catch (Exception e) {
				System.out.println("e.getMessage() = " + e.getMessage());
			}
		}
		return result;
	}
	
	@Autowired
	private MenuDao menuDao;
	
	
	/**
	 * 根据id 删除
	 *
	 * @param id
	 * @return
	 */
	@Override
	public Integer deleteRole(Integer id) {
		return tblRoleDao.deleteRole(id);
	}
	
	/**
	 * 根据条件获取总记录数
	 *
	 * @param tblRole
	 * @return
	 */
	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public Integer getRoleCount(TblRole tblRole) {
		return tblRoleDao.getRoleCount(tblRole);
	}
	
	/**
	 * 获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param tblRole
	 * @return
	 */
	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<TblRole> getRolePage(Integer page, Integer limit, TblRole tblRole) {
		if (page != null && limit != null) {
			page = (page - 1) * limit;
		}
		return tblRoleDao.getRolePage(page, limit, tblRole);
	}
}
