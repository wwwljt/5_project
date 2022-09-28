package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblTestResultSdsDao;
import com.fivegroup.project.dao.TblTesterSdsDao;
import com.fivegroup.project.entity.vo.StatisticsVo;
import com.fivegroup.project.entity.vo.TblTestResultVo;
import com.fivegroup.project.service.TblTesterSdsService;
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
 * 创建时间: 2022/9/14  20:42  星期三
 * <p>
 */
@Service
public class TblTesterSdsServiceImpl implements TblTesterSdsService {
	@Autowired
	private TblTesterSdsDao tblTesterSdsDao;
	
	@Autowired
	private TblTestResultSdsDao tblTestResultSdsDao;
	
	/**
	 * 获取总记录数
	 *
	 * @return
	 */
	@Override
	public Integer getTblTestCount() {
		return tblTesterSdsDao.getTblTestCount();
	}
	
	/**
	 * 获取统计数据
	 *
	 * @return
	 */
	@Override
	public StatisticsVo getTbTestStatistics() {
		return tblTesterSdsDao.getTbTestStatistics();
	}
	
	/**
	 * 根据 id 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@Override
	public Integer deleteTblTestResulSds(Integer[] ids) {
		Integer result = tblTestResultSdsDao.deleteById(ids);
		return tblTesterSdsDao.deleteTblTestResulSds(ids);
	}
	
	/**
	 * 根据条件获取分页数据
	 *
	 * @param tblTestResultVo
	 * @param page
	 * @param limit
	 * @return
	 */
	@Override
	public List<TblTestResultVo> getTbTestResultSdsPageAll(TblTestResultVo tblTestResultVo, Integer page, Integer limit) {
		page = (page - 1) * limit;
		return tblTesterSdsDao.getTbTestResultSdsPageAll(tblTestResultVo, page, limit);
	}
	
	/**
	 * 根据条件查询总记录数
	 *
	 * @param tblTestResultVo
	 * @return
	 */
	@Override
	public Integer getTbTestResultSdsCount(TblTestResultVo tblTestResultVo) {
		return tblTesterSdsDao.getTbTestResultSdsCount(tblTestResultVo);
	}
}
