package com.fivegroup.project.controller.front;

import cn.hutool.core.util.ObjectUtil;
import com.fivegroup.project.entity.TblTesterFpa;
import com.fivegroup.project.entity.TblTesterSas;
import com.fivegroup.project.entity.TblTesterSds;
import com.fivegroup.project.entity.ViewTestPlan;
import com.fivegroup.project.entity.vo.TesterVo;
import com.fivegroup.project.service.TblTestPlanFpaService;
import com.fivegroup.project.service.TblTestPlanSasService;
import com.fivegroup.project.service.TblTestPlanSdsService;
import com.fivegroup.project.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

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
	 * 前端登录校验
	 *
	 * @param testVo
	 * @return
	 */
	@PostMapping("/checkTest")
	public Result checkTest(@RequestBody TesterVo testVo, HttpSession session) {
		System.out.println("testVo = " + testVo);
		// 根据 邀请码查询测试计划
		ViewTestPlan viewTestPlan = tblTestPlanSdsService.queryByTestCode(testVo.getTestCode());
		System.out.println("viewTestPlan = " + viewTestPlan);
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
						System.out.println("byPhone2 = " + byPhone2);
						if (ObjectUtil.isNotEmpty(byPhone2) && byPhone2.size() > 0) {
							System.out.println("成功");
							flag = true;
						}
						break;
					default:
						System.out.println("没有此类型");
				}
				
				if (flag) {
					// 手机号已经测试过了
					return Result.fail();
				} else {
					// 成功
					testVo.setId(viewTestPlan.getId());
					testVo.setType(viewTestPlan.getType());
					testVo.setName(viewTestPlan.getTestName());
					session.setAttribute("testerVo", testVo);
					return Result.ok();
				}
			} else {
				// 邀请码失效
				return Result.fail();
			}
		} else {
			// 邀请码不可用
			return Result.fail();
		}
	}
	
	
	
}
