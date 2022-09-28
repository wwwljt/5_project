package com.fivegroup.project.service.impl;


import cn.hutool.core.bean.BeanUtil;
import com.fivegroup.project.dao.TblTestPlanFpaMapper;
import com.fivegroup.project.dao.ViewTestResultFpaDao;
import com.fivegroup.project.entity.QuestionFpa;
import com.fivegroup.project.entity.TblTestPlanFpa;
import com.fivegroup.project.entity.TblTesterFpa;
import com.fivegroup.project.entity.ViewTestResultFpa;
import com.fivegroup.project.entity.vo.TesterVo;
import com.fivegroup.project.service.TblTestPlanFpaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @ClassName Question_fpaServiceImpl
 * @Description 题目管理service实现类，与mapper交互
 * @Author WangDeSheng
 * @Date 2022/9/12 20:31
 * @Version 1.0
 */
@Service
public class TblTestPlanFpaServiceImpl implements TblTestPlanFpaService {
	@Autowired
	private TblTestPlanFpaMapper mapper;
	@Autowired
	public ViewTestResultFpaDao viewTestResultFpaDao;
	
	/**
	 * 保存fpa 测试结果
	 *
	 * @param answerList
	 * @param tester
	 * @return
	 */
	@Override
	public String saveTestResult(List<Map<String, Object>> answerList, TesterVo tester) {
		TblTesterFpa tblTesterFpa = new TblTesterFpa();
		/*
		 * 复制Bean对象属性<br>
		 * 限制类用于限制拷贝的属性，例如一个类我只想复制其父类的一些属性，就可以将editable设置为父类
		 *
		 * @param source           源Bean对象
		 * @param target           目标Bean对象
		 * @param ignoreProperties 不拷贝的的属性列表
		 */
		BeanUtil.copyProperties(tester, tblTesterFpa);
		// 保存测试用户
		Integer count = mapper.insert(tblTesterFpa);
		Integer id = tblTesterFpa.getId();
		System.out.println("id = " + id);
		//保存测试结果
		int i = this.insertBatch(answerList, id);
		System.out.println("i = " + i);
		// 成功 返回测试结果
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
		return mapper.insertBatch(answerList, testerId);
	}
	
	/**
	 * 查询测试者结果
	 *
	 * @param testerId
	 * @return
	 */
	@Override
	public String seleResult(Integer testerId) {
		System.out.println("testerId = " + testerId);
		ViewTestResultFpa viewFpa = viewTestResultFpaDao.seleResultFpa(testerId);
		System.out.println("viewFpa = " + viewFpa);
		double red = viewFpa.getRedCount();
		double yellow = viewFpa.getYellowCount();
		double blue = viewFpa.getBlueCount();
		double green = viewFpa.getGreenCount();
		
		if (red > yellow && red > blue && red > green) {
			// 红色性格
			return "red";
		} else if (yellow > red && yellow > blue && yellow > green) {
			//
			return "yellow";
		} else if (blue > red && blue > yellow && blue > green) {
			return "blue";
		} else if (green > red && green > yellow && green > blue) {
			return "green";
		} else {
			return "All";
		}
	}
	
	/**
	 * 查询所有fpa
	 *
	 * @return
	 */
	@Override
	public List<QuestionFpa> findAllQuestion() {
		return mapper.findAllQuestion();
	}
	
	/**
	 * 根据 手机号查找 测试计划
	 *
	 * @param phone
	 * @return
	 */
	@Override
	public List<TblTesterFpa> findFpaTesterByPhone(String phone) {
		return mapper.findFpaTesterByPhone(phone);
	}
	
	@Override
	public List<TblTestPlanFpa> getAllTTp(int begin, int limit, TblTestPlanFpa TblTestPlanFpa) {
		return mapper.getAllTTp(begin, limit, TblTestPlanFpa);
	}
	
	//    @Override
	//    public List<Question_fpa> getAll() {
	//        return mapper.getAll();
	//    }
	
	@Override
	public Boolean insertTTp(TblTestPlanFpa TblTestPlanFpa) {
		return mapper.insertTTp(TblTestPlanFpa);
	}
	
	@Override
	public Boolean deleteTTp(int id) {
		return mapper.deleteTTp(id);
	}
	
	@Override
	public Boolean updateTTp(TblTestPlanFpa TblTestPlanFpa) {
		return mapper.updateTTp(TblTestPlanFpa);
	}
	
	//    @Override
	//    public List<Question_fpa> searchTTp(Question_fpa TblTestPlanFpa) {
	//        return mapper.searchTTp(TblTestPlanFpa);
	//    }
	
	@Override
	public int countTTp(TblTestPlanFpa TblTestPlanFpa) {
		return mapper.countTTp(TblTestPlanFpa);
	}
	
	
}
