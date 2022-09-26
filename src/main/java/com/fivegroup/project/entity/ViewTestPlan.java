package com.fivegroup.project.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.io.Serializable;

/**
 * (ViewTestPlan)实体类
 *
 * @author Www
 * @since 2022-09-24 17:36:42
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class ViewTestPlan implements Serializable {
	private static final long serialVersionUID = 225950356101523400L;
	
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

