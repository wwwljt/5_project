package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblQuestionSdsDao;
import com.fivegroup.project.entity.TblQuestionSds;
import com.fivegroup.project.service.TblQuestionSdsService;
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
 * 创建时间: 2022/9/13  10:49  星期二
 * <p>
 */
@Service
public class TblQuestionSdsServiceImpl implements TblQuestionSdsService {
	@Autowired
	private TblQuestionSdsDao tblQuestionSdsDao;
	
	/**
	 * 保存
	 *
	 * @param tblQuestionSds
	 * @param request
	 * @return
	 */
	@Override
	public Integer save(TblQuestionSds tblQuestionSds, HttpServletRequest request) {
		String username = JwtHelper.getUsername(request);
		tblQuestionSds.setCreateTime(new Date());
		tblQuestionSds.setCreateBy(username);
		tblQuestionSds.setUpdateTime(new Date());
		tblQuestionSds.setUpdateBy(username);
		return tblQuestionSdsDao.save(tblQuestionSds);
	}
	
	/**
	 * 修改
	 *
	 * @param tblQuestionSds
	 * @return
	 */
	@Override
	public Integer update(TblQuestionSds tblQuestionSds, HttpServletRequest request) {
		tblQuestionSds.setUpdateTime(new Date());
		System.out.println("JwtHelper.getUsername(request) = " + JwtHelper.getUsername(request));
		tblQuestionSds.setUpdateBy(JwtHelper.getUsername(request));
		System.out.println("tblQuestionSds = " + tblQuestionSds);
		return tblQuestionSdsDao.update(tblQuestionSds);
	}
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@Override
	public Integer deleteTblQuestionSds(Integer[] ids) {
		return tblQuestionSdsDao.deleteTblQuestionSds(ids);
	}
	
	/**
	 * 根据 typeId  获取对应的类型
	 *
	 * @param typeId
	 * @return
	 */
	@Override
	public String getTblQuestionSdType(Integer typeId) {
		return tblQuestionSdsDao.getTblQuestionSdType(typeId);
	}
	
	/**
	 * 根据条件获取分页数据
	 *
	 * @param tblQuestionSds
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	@Override
	public List<TblQuestionSds> getTblQuestionSdsPageAll(TblQuestionSds tblQuestionSds, Integer pageNo, Integer pageSize) {
		pageNo = (pageNo - 1) * pageSize;
		return tblQuestionSdsDao.getTblQuestionSdsPageAll(tblQuestionSds, pageNo, pageSize);
	}
	
	/**
	 * 根据条件获取总记录数
	 *
	 * @param tblQuestionSds
	 * @return
	 */
	@Override
	public Integer getTblQuestionSdsCount(TblQuestionSds tblQuestionSds) {
		return tblQuestionSdsDao.getTblQuestionSdsCount(tblQuestionSds);
	}
}
