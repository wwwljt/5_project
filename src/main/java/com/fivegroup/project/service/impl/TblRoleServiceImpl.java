package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblRoleDao;
import com.fivegroup.project.entity.TblRole;
import com.fivegroup.project.service.TblRoleService;
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
 * 创建时间: 2022/9/16  8:55  星期五
 * <p>
 */
@Service
public class TblRoleServiceImpl implements TblRoleService {
	@Autowired
	private TblRoleDao tblRoleDao;
	
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
	public List<TblRole> getRolePage(Integer page, Integer limit, TblRole tblRole) {
		if (page != null && limit != null) {
			page = (page - 1) * limit;
		}
		return tblRoleDao.getRolePage(page, limit, tblRole);
	}
}
