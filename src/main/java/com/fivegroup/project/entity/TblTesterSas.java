package com.fivegroup.project.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 性格测试者(TblTesterSas)实体类
 *
 * @author makejava
 * @since 2022-09-16 15:49:40
 */
public class TblTesterSas implements Serializable {
    private static final long serialVersionUID = -37283552720599074L;
    
    private Integer id;
    
    private String name;
    
    private String phone;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private BigDecimal forward;

    private BigDecimal inversion;

    private Integer testPlanId;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public BigDecimal getForward() {
        return forward;
    }

    public void setForward(BigDecimal forward) {
        this.forward = forward;
    }

    public BigDecimal getInversion() {
        return inversion;
    }

    public void setInversion(BigDecimal inversion) {
        this.inversion = inversion;
    }

    public Integer getTestPlanId() {
        return testPlanId;
    }

    public void setTestPlanId(Integer testPlanId) {
        this.testPlanId = testPlanId;
    }


    @Override
    public String toString() {
        return "TblTesterSas{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", createTime=" + createTime +
                ", forward=" + forward +
                ", inversion=" + inversion +
                ", testPlanId=" + testPlanId +
                '}';
    }
}

