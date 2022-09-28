package com.fivegroup.project.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
/**
 * @author Www
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ViewTestResultSds {

  private long id;
  private String name;
  private String phone;
  @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
  //从页面传值到controller的时候，自动解析字符串日期到date
  @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
  private Date createTime;
  private double forward;
  private double inversion;
  private Integer testPlanId;

}
