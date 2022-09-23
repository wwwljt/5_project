package com.fivegroup.project.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @ClassName Test_result_fpa
 * @Description TODO
 * @Author WangDeSheng
 * @Date 2022/9/15 21:36
 * @Version 1.0
 */
public class TestResultFpa {
    private int testerId;
    private Double redCount;
    private Double blueCount;
    private Double yellowCount;
    private Double greenCount;
    private String phone;
    private String name;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    private Integer testPlanId;

    public TestResultFpa() {
    }

    public TestResultFpa(int testerId, Double redCount, Double blueCount, Double yellowCount, Double greenCount, String phone, String name, Date createTime, Integer testPlanId) {
        this.testerId = testerId;
        this.redCount = redCount;
        this.blueCount = blueCount;
        this.yellowCount = yellowCount;
        this.greenCount = greenCount;
        this.phone = phone;
        this.name = name;
        this.createTime = createTime;
        this.testPlanId = testPlanId;
    }

    public int getTesterId() {
        return testerId;
    }

    public void setTesterId(int testerId) {
        this.testerId = testerId;
    }

    public Double getRedCount() {
        return redCount;
    }

    public void setRedCount(Double redCount) {
        this.redCount = redCount;
    }

    public Double getBlueCount() {
        return blueCount;
    }

    public void setBlueCount(Double blueCount) {
        this.blueCount = blueCount;
    }

    public Double getYellowCount() {
        return yellowCount;
    }

    public void setYellowCount(Double yellowCount) {
        this.yellowCount = yellowCount;
    }

    public Double getGreenCount() {
        return greenCount;
    }

    public void setGreenCount(Double greenCount) {
        this.greenCount = greenCount;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getTestPlanId() {
        return testPlanId;
    }

    public void setTestPlanId(Integer testPlanId) {
        this.testPlanId = testPlanId;
    }

    @Override
    public String toString() {
        return "TestResultFpa{" +
                "testerId=" + testerId +
                ", redCount=" + redCount +
                ", blueCount=" + blueCount +
                ", yellowCount=" + yellowCount +
                ", greenCount=" + greenCount +
                ", phone='" + phone + '\'' +
                ", name='" + name + '\'' +
                ", createTime=" + createTime +
                ", testPlanId=" + testPlanId +
                '}';
    }
}
