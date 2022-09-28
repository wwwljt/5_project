package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblTestPlanSdsDao;
import com.fivegroup.project.dao.ViewTestResultSdsDao;
import com.fivegroup.project.entity.*;
import com.fivegroup.project.entity.vo.TesterVo;
import com.fivegroup.project.service.TblTestPlanSdsService;
import com.fivegroup.project.util.JwtHelper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;
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
	
	@Autowired
	private ViewTestResultSdsDao viewTestResultSdsDao;
	
	/**
	 * 校验计划名称是否重复
	 *
	 * @param plan
	 * @return
	 */
	@Override
	public TblTestPlanSds checkPlan(String plan) {
		return tblTestPlanSdsDao.checkPlan(plan);
	}
	
	/**
	 * 保存sds 测试结果
	 *
	 * @param answerList
	 * @param tester
	 * @return
	 */
	@Override
	public String saveTestResult(List<Map<String, Object>> answerList, TesterVo tester) {
		TblTesterSds tblTesterSds = new TblTesterSds();
		BeanUtils.copyProperties(tester, tblTesterSds);
		tblTesterSds.setId(0);
		Integer count = tblTestPlanSdsDao.insert(tblTesterSds);
		// 获取自增后的主键
		Integer id = tblTesterSds.getId();
		int result = this.insertBatch(answerList, id);
		return this.seleResult(id);
	}
	
	/**
	 * 批量插入
	 *
	 * @param answerList
	 * @param testerId
	 * @return
	 */
	@Override
	public int insertBatch(List<Map<String, Object>> answerList, Integer testerId) {
		return tblTestPlanSdsDao.insertBatch(answerList, testerId);
	}
	
	/**
	 * 查询测试结果
	 *
	 * @param testerId
	 * @return
	 */
	@Override
	public String seleResult(Integer testerId) {
		ViewTestResultSds viewSds = viewTestResultSdsDao.selectResultSas(testerId);
		
		double a = viewSds.getForward() + viewSds.getInversion();
		if (a < 50) {
			return "SdsNormal";
		} else if (a < 60) {
			return "SdsMild";
		} else if (a <= 70) {
			return "SdsModerate";
		} else {
			return "SdsSevere";
		}
	}
	
	/**
	 * 查询所偶 sds
	 *
	 * @return
	 */
	@Override
	public List<TblQuestionSds> findAllQuestion() {
		return tblTestPlanSdsDao.findAllQuestion();
	}
	
	/**
	 * 根据 手机号查找测试计划
	 *
	 * @param phone
	 * @return
	 */
	@Override
	public List<TblTesterSds> findSdsTesterByPhone(String phone) {
		return tblTestPlanSdsDao.findSdsTesterByPhone(phone);
	}
	
	/**
	 * 根据邀请码获取测试计划
	 *
	 * @param testCode
	 * @return
	 */
	@Override
	public ViewTestPlan queryByTestCode(String testCode) {
		return tblTestPlanSdsDao.queryByTestCode(testCode);
	}
	
	/**
	 * 获取所有测试计划
	 *
	 * @return
	 */
	@Override
	public List<TblTestPlanSds> getTestPlanSdsAll() {
		return tblTestPlanSdsDao.getTestPlanSdsAll();
	}
	
	/**
	 * 保存
	 *
	 * @param tblTestPlanSds
	 * @param request
	 * @return
	 */
	//	@Transactional
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
	//	@Transactional
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
	//	@Transactional
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
