package com.fivegroup.project.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.io.Serializable;

/**
 * 部门表(TblDept)实体类
 *
 * @author makejava
 * @since 2022-09-15 18:21:31
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TblDept implements Serializable {
	private static final long serialVersionUID = -81727617512185958L;
	/**
	 * 部门id
	 */
	private Integer deptId;
	/**
	 * 部门名称
	 */
	private String deptName;
	/**
	 * 显示顺序
	 */
	private Integer orderNum;
	/**
	 * 部门状态（0正常 1停用）
	 */
	private String status;
	/**
	 * 删除标志（0代表存在 2代表删除）
	 */
	private String delFlag;
	/**
	 * 创建者
	 */
	private String createBy;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 更新者
	 */
	private String updateBy;
	/**
	 * 更新时间
	 */
	private Date updateTime;
	
}

