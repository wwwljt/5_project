package com.fivegroup.project.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.io.Serializable;

/**
 * (TblLog)实体类
 *
 * @author makejava
 * @since 2022-09-21 17:10:13
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TblLog implements Serializable {
	private static final long serialVersionUID = 766038141052475789L;
	/**
	 * 自增主键
	 */
	private Integer id;
	/**
	 * 登录名
	 */
	private String loginName;
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * IP地址
	 */
	private String ip;
	/**
	 * 类名
	 */
	private String className;
	/**
	 * 方法名
	 */
	private String methodName;
	/**
	 * 参数
	 */
	private String params;
	/**
	 * 创建时间
	 */
	private Date createTime;
	
	
}

