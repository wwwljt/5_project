package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblLogDao;
import com.fivegroup.project.entity.TblLog;
import com.fivegroup.project.service.TblLogService;
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
 * 创建时间: 2022/9/21  17:27  星期三
 * <p>
 */
@Service
public class TblLogServiceImpl implements TblLogService {
	@Autowired
	private TblLogDao tblLogDao;
	
	/**
	 * 添加日志
	 *
	 * @param tblLog
	 * @return
	 */
	@Override
	public Integer insert(TblLog tblLog) {
		return tblLogDao.insert(tblLog);
	}
	
	/**
	 * @param page
	 * @param limit
	 * @return
	 */
	@Override
	public List<TblLog> getDeptPage(Integer page, Integer limit) {
		page = (page - 1) * limit;
		return tblLogDao.getDeptPage(page, limit);
	}
	
	/**
	 * 获取总记录数
	 *
	 * @return
	 */
	@Override
	public Integer getLogCount() {
		return tblLogDao.getLogCount();
	}
}
