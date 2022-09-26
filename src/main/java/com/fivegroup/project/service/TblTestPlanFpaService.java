package com.fivegroup.project.service;


import com.fivegroup.project.entity.TblTestPlanFpa;
import com.fivegroup.project.entity.TblTesterFpa;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TblTestPlanFpaService {
	//查询所有并分页
	public List<TblTestPlanFpa> getAllTTp(@Param("begin") int begin, @Param("limit") int limit, TblTestPlanFpa tblTestPlanFpa);
	
	//    public List<Question_fpa> getAll();
	//增加
	public Boolean insertTTp(TblTestPlanFpa TblTestPlanFpa);
	
	// 删除
	public Boolean deleteTTp(int id);
	
	// 修改
	public Boolean updateTTp(TblTestPlanFpa TblTestPlanFpa);
	
	//    // 模糊查询
	//    public List<Question_fpa> searchTTp(Question_fpa TblTestPlanFpa);
	// 查询总条数
	public int countTTp(TblTestPlanFpa TblTestPlanFpa);
	
	/**
	 * 根据 手机号查找 测试计划
	 *
	 * @param phone
	 * @return
	 */
	List<TblTesterFpa> findFpaTesterByPhone(String phone);
}
