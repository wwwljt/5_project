package com.fivegroup.project.service;

import com.fivegroup.project.entity.TblDept;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/15  18:31  星期四
 * <p>
 */
public interface TblDeptService {
	/**
	 * 根据条件获取分页总条数
	 *
	 * @param tblDept
	 * @return
	 */
	Integer getDeptPageCount(TblDept tblDept);
	
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
	 * 修改或保存
	 *
	 * @param tblDept
	 * @param request
	 * @return
	 */
	Integer saveOrUpdate(TblDept tblDept, HttpServletRequest request);
	
	/**
	 * 批量删除
	 *
	 * @param ids
	 * @return
	 */
	Integer deleteBatch(Integer[] ids);
	
	/**
	 * 获取所有部门数据
	 *
	 * @return
	 */
	List<TblDept> getDptAll();
	
	/**
	 * 根据 id查询部门
	 *
	 * @return
	 */
	TblDept getTblDeptById(Integer id);
	
	/**
	 * 校验部门名称是否重复
	 *
	 * @param deptName
	 * @return
	 */
	TblDept checkDeptName(String deptName);
}
