package com.fivegroup.project.service;

import com.fivegroup.project.entity.TblRole;
import com.fivegroup.project.entity.vo.TblRoleVo;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/16  8:54  星期五
 * <p>
 */
public interface TblRoleService {
	/**
	 * 根据条件获取总记录数
	 *
	 * @param tblRole
	 * @return
	 */
	Integer getRoleCount(TblRole tblRole);
	
	/**
	 * 获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param tblRole
	 * @return
	 */
	List<TblRole> getRolePage(Integer page, Integer limit, TblRole tblRole);
	
	/**
	 * 根据id 删除
	 *
	 * @param id
	 * @return
	 */
	Integer deleteRole(Integer id);
	
	
	/**
	 * 添加或修改
	 *
	 * @param tblRoleVo
	 * @param request
	 * @return
	 */
	Integer saveOrUpdate(TblRoleVo tblRoleVo, HttpServletRequest request);
	
	/**
	 * 保存
	 *
	 * @param tblRoleVo
	 * @param request
	 * @return
	 */
	Integer save(TblRoleVo tblRoleVo, HttpServletRequest request);
	
	/**
	 * 修改
	 *
	 * @param tblRoleVo
	 * @param request
	 * @return
	 */
	Integer update(TblRoleVo tblRoleVo, HttpServletRequest request);
	
	/**
	 * 获取所有角色
	 *
	 * @return
	 */
	List<TblRole> getRoleAll();
	
	/**
	 * 校验角色名称是否重复
	 *
	 * @param roleName
	 * @return
	 */
	TblRole findRoleName(String roleName);
}
