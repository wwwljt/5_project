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
 * 创建时间: 2022/9/14  20:31  星期三
 * <p>
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TblTestResultVo {
	
	private Integer id;
	
	private String name;
	
	private String phone;
	
	private Date createTime;
	private Integer testPlanId;
	private Integer forward;
	private Integer inversion;
	
}
