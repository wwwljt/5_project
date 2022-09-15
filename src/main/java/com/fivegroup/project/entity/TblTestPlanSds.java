package com.fivegroup.project.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.io.Serializable;

/**
 * 测试计划fpa(TblTestPlanSds)实体类
 *
 * @author makejava
 * @since 2022-09-14 20:14:42
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TblTestPlanSds implements Serializable {
	private static final long serialVersionUID = -95224344018310875L;
	
	private Integer id;
	
	private String testName;
	
	private Integer testCode;
	
	private Date testBegin;
	
	private Date testEnd;
	
	private Date createTime;
	
	private String createBy;
	
	private Date updateTime;
	
	private String updateBy;
	
	private String remark;
	
	private String type;
	
	
	
}

