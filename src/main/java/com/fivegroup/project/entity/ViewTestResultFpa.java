package com.fivegroup.project.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;


/**
 * (ViewTestResultFpa)实体类
 *
 * @author Www
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ViewTestResultFpa implements Serializable {
    private static final long serialVersionUID = 385138449852054289L;
    /**
     * 测试人员id
     */
    private Integer testerId;

    private Double redCount;

    private Double blueCount;

    private Double yellowCount;

    private Double greenCount;
    /**
     * 手机号
     */
    private String phone;
    /**
     * 测试者姓名
     */
    private String name;
    /**
     * 测试时间
     */
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    //从页面传值到controller的时候，自动解析字符串日期到date
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /*
    * 测试计划id
    * */
    private Integer testPlanId;

   
}

