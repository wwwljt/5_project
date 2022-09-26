package com.fivegroup.project.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * 性格测试者(TblTesterFpa)实体类
 *
 * @author makejava
 * @since 2022-09-26 09:05:31
 */
public class TblTesterFpa implements Serializable {
	private static final long serialVersionUID = 235329165924580316L;
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
	
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public Integer getTestPlanId() {
		return testPlanId;
	}
	
	public void setTestPlanId(Integer testPlanId) {
		this.testPlanId = testPlanId;
	}
	
}

