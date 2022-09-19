package com.fivegroup.project.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 测试计划fpa(TblTestPlanSas)实体类
 *
 * @author makejava
 * @since 2022-09-15 17:11:51
 */
public class TblTestPlanSas implements Serializable {
    private static final long serialVersionUID = -94494582813216645L;
    
    private Integer id;
    
    private String testName;
    
    private Integer testCode;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date testBegin;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date testEnd;
    
    private Date createTime;
    
    private String createBy;
    
    private Date updateTime;
    
    private String updateBy;
    
    private String remark;
    
    private String type;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public Integer getTestCode() {
        return testCode;
    }

    public void setTestCode(Integer testCode) {
        this.testCode = testCode;
    }

    public Date getTestBegin() {
        return testBegin;
    }

    public void setTestBegin(Date testBegin) {
        this.testBegin = testBegin;
    }

    public Date getTestEnd() {
        return testEnd;
    }

    public void setTestEnd(Date testEnd) {
        this.testEnd = testEnd;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }


    @Override
    public String toString() {
        return "TblTestPlanSas{" +
                "id=" + id +
                ", testName='" + testName + '\'' +
                ", testCode=" + testCode +
                ", testBegin=" + testBegin +
                ", testEnd=" + testEnd +
                ", createTime=" + createTime +
                ", createBy='" + createBy + '\'' +
                ", updateTime=" + updateTime +
                ", updateBy='" + updateBy + '\'' +
                ", remark='" + remark + '\'' +
                ", type='" + type + '\'' +
                '}';
    }


}

