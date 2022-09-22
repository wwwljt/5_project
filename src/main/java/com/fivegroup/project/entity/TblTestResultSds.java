package com.fivegroup.project.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (TblTestResultSdsDao)实体类
 *
 * @author makejava
 * @since 2022-09-14 20:15:06
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TblTestResultSds implements Serializable {
	private static final long serialVersionUID = -78601835576622301L;
	
	private Integer id;
	
	private Integer testerId;
	
	private Integer questionId;
	
	private String answer;
	
	
}

