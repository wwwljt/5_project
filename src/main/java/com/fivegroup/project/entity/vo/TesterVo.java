package com.fivegroup.project.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/24  17:32  星期六
 * <p>
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TesterVo {
	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 测试者姓名
	 */
	private String name;
	/**
	 * 手机号
	 */
	private String phone;
	/**
	 * 测试时间
	 */
	private Date createTime;
	/**
	 * 测试计划id
	 */
	private Integer testPlanId;
	/**
	 * 测试计划名称
	 */
	private String testName;
	
	/**
	 * 测试code
	 */
	private  Integer testCode;
	
	/**
	 * 测试类型
	 */
	private  String type;
}
