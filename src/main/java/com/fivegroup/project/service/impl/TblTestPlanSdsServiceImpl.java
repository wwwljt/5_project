package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblTestPlanSdsDao;
import com.fivegroup.project.entity.TblTestPlanSds;
import com.fivegroup.project.service.TblTestPlanSdsService;
import com.fivegroup.project.util.JwtHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/14  17:10  星期三
 * <p>
 */
@Service
public class TblTestPlanSdsServiceImpl implements TblTestPlanSdsService {
	@Autowired
	private TblTestPlanSdsDao tblTestPlanSdsDao;
	
	/**
	 * 保存
	 *
	 * @param tblTestPlanSds
	 * @param request
	 * @return
	 */
	@Override
	public Integer save(TblTestPlanSds tblTestPlanSds, HttpServletRequest request) {
		String username = JwtHelper.getUsername(request);
		tblTestPlanSds.setCreateTime(new Date());
		tblTestPlanSds.setCreateBy(username);
		tblTestPlanSds.setUpdateTime(new Date());
		tblTestPlanSds.setUpdateBy(username);
		Random random = new Random();
		int num = random.nextInt(899999) + 100000;
		tblTestPlanSds.setTestCode(num);
		return tblTestPlanSdsDao.save(tblTestPlanSds);
	}
	
	/**
	 * 修改
	 *
	 * @param tblTestPlanSds
	 * @param request
	 * @return
	 */
	@Override
	public Integer update(TblTestPlanSds tblTestPlanSds, HttpServletRequest request) {
		tblTestPlanSds.setUpdateTime(new Date());
		tblTestPlanSds.setUpdateBy(JwtHelper.getUsername(request));
		return tblTestPlanSdsDao.update(tblTestPlanSds);
	}
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@Override
	public Integer deleteTblTestPlanSds(Integer[] ids) {
		return tblTestPlanSdsDao.deleteTblTestPlanSds(ids);
	}
	
	/**
	 * 根据条件查询总记录数
	 *
	 * @param tblTestPlanSds
	 * @return
	 */
	@Override
	public Integer getTbTestPlanSdsCount(TblTestPlanSds tblTestPlanSds) {
		return tblTestPlanSdsDao.getTbTestPlanSdsCount(tblTestPlanSds);
	}
	
	/**
	 * 根据条件分页数据
	 *
	 * @param tblTestPlanSds
	 * @param page
	 * @param limit
	 * @return
	 */
	@Override
	public List<TblTestPlanSds> getTbTestPlanSdsPageAll(TblTestPlanSds tblTestPlanSds, Integer page, Integer limit) {
		page = (page - 1) * limit;
		return tblTestPlanSdsDao.getTbTestPlanSdsPageAll(tblTestPlanSds, page, limit);
	}
}
