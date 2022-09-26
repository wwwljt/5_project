package com.fivegroup.project.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
@Data
public class TblTestPlanFpa {

  private Integer id;
  private String testName;
  private long testCode;
  @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
  @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
  private Date testBegin;
  @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
  @DateTimeFormat (pattern = "yyyy-MM-dd HH:mm:ss")
  private Date testEnd;
  @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
  @DateTimeFormat (pattern = "yyyy-MM-dd HH:mm:ss")
  private Date createTime;
  private String createBy;
  @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
  @DateTimeFormat (pattern = "yyyy-MM-dd HH:mm:ss")
  private Date updateTime;
  private String updateBy;
  private String remark;
  private String type;
  private long isdelete;

}
