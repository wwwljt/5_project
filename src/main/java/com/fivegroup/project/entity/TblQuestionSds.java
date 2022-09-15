package com.fivegroup.project.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * 问题表(TblQuestionSds)实体类
 *
 * @author makejava
 * @since 2022-09-13 09:47:25
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TblQuestionSds implements Serializable {
	private static final long serialVersionUID = 774486761887691413L;
	
	private Integer id;
	
	private String question;
	
	private String optionA;
	
	private String optionB;
	
	private String optionC;
	
	private String optionD;
	
	private Integer type;
	
	private Integer status;
	
	private Date createTime;
	
	private String createBy;
	
	private Date updateTime;
	
	private String updateBy;
	
	private Integer flag;
	
	
}

