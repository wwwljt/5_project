package com.fivegroup.project.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 性格测试者(TblTesterSds)实体类
 *
 * @author makejava
 * @since 2022-09-14 20:14:23
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TblTesterSds implements Serializable {
	private static final long serialVersionUID = 818664166423667355L;
	
	private Integer id;
	
	private String name;
	
	private String phone;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	private Integer testPlanId;
	
	
}

