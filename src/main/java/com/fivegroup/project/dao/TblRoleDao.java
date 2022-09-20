package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblRole;
import com.fivegroup.project.entity.vo.TblRoleVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/16  8:56  星期五
 * <p>
 */
public interface TblRoleDao {
	/**
	 * 根据条件获取总记录数
	 *
	 * @param tblRole
	 * @return
	 */
	Integer getRoleCount(@Param("tblRole") TblRole tblRole);
	
	/**
	 * 获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param tblRole
	 * @return
	 */
	List<TblRole> getRolePage(@Param("page") Integer page, @Param("limit") Integer limit, @Param("tblRole") TblRole tblRole);
	
	/**
	 * 根据id 删除
	 *
	 * @param id
	 * @return
	 */
	Integer deleteRole(@Param("id") Integer id);
	
	/**
	 * 修改角色
	 *
	 * @param tblRoleVo
	 * @return
	 */
	Integer updateRole(@Param("tblRoleVo") TblRoleVo tblRoleVo);
	
	/**
	 * 保存用户
	 * @param tblRoleVo
	 * @return
	 */
	Integer saveRole(@Param("tblRoleVo") TblRoleVo tblRoleVo);
	
	/**
	 * 根据 id 查询 role
	 * @param id
	 * @return
	 */
	TblRole getRolePageById(@Param("id") Integer id);
	/**
	 * 获取所有角色
	 *
	 * @return
	 */
	List<TblRole> getRoleAll();
}
