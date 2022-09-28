package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblDeptDao;
import com.fivegroup.project.entity.TblDept;
import com.fivegroup.project.service.TblDeptService;
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
 * 创建时间: 2022/9/15  18:32  星期四
 * <p>
 */
@Service
public class TblDeptServiceImpl implements TblDeptService {
	@Autowired
	private TblDeptDao tblDeptDao;
	
	/**
	 * 校验部门名称是否重复
	 *
	 * @param deptName
	 * @return
	 */
	@Override
	public TblDept checkDeptName(String deptName) {
		return tblDeptDao.checkDeptName(deptName);
	}
	
	/**
	 * 根据 id查询部门
	 *
	 * @param id
	 * @return
	 */
	@Override
	public TblDept getTblDeptById(Integer id) {
		return tblDeptDao.getTblDeptById(id);
	}
	
	/**
	 * 获取所有部门数据
	 *
	 * @return
	 */
	@Override
	public List<TblDept> getDptAll() {
		return tblDeptDao.getDptAll();
	}
	
	/**
	 * 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@Override
	public Integer deleteBatch(Integer[] ids) {
		return tblDeptDao.deleteBatch(ids);
	}
	
	/**
	 * 修改或保存
	 *
	 * @param tblDept
	 * @param request
	 * @return
	 */
	@Override
	public Integer saveOrUpdate(TblDept tblDept, HttpServletRequest request) {
		Integer result;
		Integer deptId = tblDept.getDeptId();
		String username = JwtHelper.getUsername(request);
		tblDept.setUpdateBy(username);
		tblDept.setUpdateTime(new Date());
		if (deptId == null || deptId == 0) {
			tblDept.setCreateBy(username);
			tblDept.setCreateTime(new Date());
			// 保存
			result = tblDeptDao.save(tblDept);
		} else {
			// 修改
			result = tblDeptDao.update(tblDept);
		}
		return result;
	}
	
	/**
	 * 获取分页数据
	 *
	 * @param page
	 * @param limit
	 * @param tblDept
	 * @return
	 */
	@Override
	public List<TblDept> getDeptPage(Integer page, Integer limit, TblDept tblDept) {
		page = (page - 1) * limit;
		return tblDeptDao.getDeptPage(page, limit, tblDept);
	}
	
	/**
	 * 根据条件获取分页总条数
	 *
	 * @param tblDept
	 * @return
	 */
	@Override
	public Integer getDeptPageCount(TblDept tblDept) {
		return tblDeptDao.getDeptPageCount(tblDept);
	}
}
