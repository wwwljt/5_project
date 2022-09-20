package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblDept;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/15  18:33  星期四
 * <p>
 */
public interface TblDeptDao {
	/**
	 * 根据条件获取分页总条数
	 *
	 * @param tblDept
	 * @return
	 */
	Integer getDeptPageCount(@Param("tblDept") TblDept tblDept);
	/**
	 * 获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param tblDept
	 * @return
	 */
	List<TblDept> getDeptPage(@Param("page") Integer page, @Param("limit") Integer limit, @Param("tblDept") TblDept tblDept);
	
	/**
	 *保存
	 * @param tblDept
	 * @return
	 */
	Integer save(@Param("tblDept") TblDept tblDept);
	
	/**
	 * 修改
	 * @param tblDept
	 * @return
	 */
	Integer update(@Param("tblDept") TblDept tblDept);
	/**
	 * 批量删除
	 *
	 * @param ids
	 * @return
	 */
	Integer deleteBatch(@Param("ids") Integer[] ids);
	
	/**
	 * 获取所有部门数据
	 * @return
	 */
	List<TblDept> getDptAll();
	
	/**
	 * 根据 id 查询
	 * @param id
	 * @return
	 */
	TblDept getTblDeptById(@Param("id") Integer id);
}
