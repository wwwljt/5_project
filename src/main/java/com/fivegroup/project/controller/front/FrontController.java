package com.fivegroup.project.controller.front;

import cn.hutool.core.util.ObjectUtil;
import com.fivegroup.project.entity.*;
import com.fivegroup.project.entity.vo.TesterVo;
import com.fivegroup.project.service.TblTestPlanFpaService;
import com.fivegroup.project.service.TblTestPlanSasService;
import com.fivegroup.project.service.TblTestPlanSdsService;
import com.fivegroup.project.util.Constants;
import com.fivegroup.project.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 前端接口
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/24  17:22  星期六
 * <p>
 */
@RestController
@RequestMapping("/front/test")
public class FrontController {
	@Autowired
	private TblTestPlanSdsService tblTestPlanSdsService;
	
	@Autowired
	private TblTestPlanSasService tblTestPlanSasService;
	
	@Autowired
	private TblTestPlanFpaService tblTestPlanFpaService;
	
	/**
	 * 前端登录页面
	 *
	 * @param modelAndView
	 * @return
	 */
	@GetMapping("/login")
	public ModelAndView jump(ModelAndView modelAndView) {
		modelAndView.setViewName("login");
		return modelAndView;
	}
	
	/**
	 * 前端登录校验
	 *
	 * @param testVo
	 * @return
	 */
	@PostMapping("/checkTest")
	public Result checkTest(@RequestBody TesterVo testVo, HttpSession session) {
		// 根据 邀请码查询测试计划
		ViewTestPlan viewTestPlan = tblTestPlanSdsService.queryByTestCode(testVo.getTestCode().toString());
		if (ObjectUtil.isNotEmpty(viewTestPlan)) {
			// 邀请码可用
			Date date = new Date();
			// 判断测试计划时间是否有效
			if (date.after(viewTestPlan.getTestBegin()) && date.before(viewTestPlan.getTestEnd())) {
				boolean flag = false;
				// 根据类型判断手机号是否可用
				switch (viewTestPlan.getType()) {
					case "fpa":
						List<TblTesterFpa> byPhone = tblTestPlanFpaService.findFpaTesterByPhone(testVo.getPhone());
						if (ObjectUtil.isNotEmpty(byPhone) && byPhone.size() > 0) {
							flag = true;
						}
						break;
					case "sas":
						List<TblTesterSas> byPhone1 = tblTestPlanSasService.findSasTesterByPhone(testVo.getPhone());
						if (ObjectUtil.isNotEmpty(byPhone1) && byPhone1.size() > 0) {
							flag = true;
						}
						break;
					case "sds":
						List<TblTesterSds> byPhone2 = tblTestPlanSdsService.findSdsTesterByPhone(testVo.getPhone());
						if (ObjectUtil.isNotEmpty(byPhone2) && byPhone2.size() > 0) {
							flag = true;
						}
						break;
					default:
						System.out.println("没有此类型");
				}
				
				if (flag) {
					// 手机号已经测试过了
					return Result.fail("手机号已经测试过了");
				} else {
					// 成功
					testVo.setTestPlanId(viewTestPlan.getId());
					testVo.setType(viewTestPlan.getType());
					testVo.setName(testVo.getName());
					testVo.setTestName(viewTestPlan.getTestName());
					session.setAttribute("testerVo", testVo);
					return Result.ok();
				}
			} else {
				// 邀请码失效
				return Result.fail("邀请码过期了");
			}
		} else {
			// 邀请码不可用
			return Result.fail("邀请码不存在");
		}
	}
	
	/**
	 * 获取题目
	 *
	 * @param httpSession
	 * @param modelAndView
	 * @return
	 */
	@GetMapping("/findQuestion")
	public ModelAndView findQuestion(HttpSession httpSession, ModelAndView modelAndView) {
		//获取session中保存的测试者信息
		TesterVo tester = (TesterVo) httpSession.getAttribute("testerVo");
		
		if (tester != null) {
			switch (tester.getType()) {
				case Constants.FPA:
					//查询所有可以测试的fpa测试题
					List<QuestionFpa> questionFpaList = tblTestPlanFpaService.findAllQuestion();
					modelAndView.addObject("questionList", questionFpaList);
					break;
				case Constants.SAS:
					//查询所有可以测试的sas测试题
					List<TblQuestionSas> questionSasList = tblTestPlanSasService.findAllQuestion();
					modelAndView.addObject("questionList", questionSasList);
					break;
				case Constants.SDS:
					//查询所有可以测试的sds测试题
					List<TblQuestionSds> questionSdsList = tblTestPlanSdsService.findAllQuestion();
					modelAndView.addObject("questionList", questionSdsList);
					break;
				default:
					break;
				
			}
			modelAndView.addObject("testerVo", tester);
			modelAndView.setViewName("testQuestion");
		} else {
			modelAndView.setViewName("login");
		}
		
		return modelAndView;
	}
	
	/**
	 * 批量保存测试结果
	 *
	 * @param answerList
	 * @return MyReturn
	 */
	@PostMapping("/saveBatchTestResult")
	public Result saveBatchTestResult(@RequestBody List<Map<String, Object>> answerList, HttpSession httpSession) {
		//获取session中保存的测试者信息
		TesterVo tester = (TesterVo) httpSession.getAttribute("testerVo");
		
		switch (tester.getType()) {
			case Constants.FPA: {
				String testResult = tblTestPlanFpaService.saveTestResult(answerList, tester);
				return Result.ok(testResult);
			}
			case Constants.SAS: {
				String testResult = tblTestPlanSasService.saveTestResult(answerList, tester);
				return Result.ok(testResult);
			}
			case Constants.SDS: {
				String testResult = tblTestPlanSdsService.saveTestResult(answerList, tester);
				return Result.ok(testResult);
			}
			default: {
				System.out.println("没有此类型");
			}
		}
		return null;
	}
	
	
}
