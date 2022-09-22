package com.aaa.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @ClassName Test_plan_fpa
 * @Description TODO
 * @Author WangDeSheng
 * @Date 2022/9/16 8:42
 * @Version 1.0
 */
public class Test_plan_fpa1 {
    private String test_name;
    private int  test_code;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date test_begin;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat (pattern = "yyyy-MM-dd HH:mm:ss")
    private Date test_end;
    private String remark;
    private int isdelete;
    public Test_plan_fpa1( String test_name, int test_code, Date test_begin, Date test_end, String remark,int isdelete) {

        this.test_name = test_name;
        this.test_code = test_code;
        this.test_begin = test_begin;
        this.test_end = test_end;
        this.remark = remark;
        this.isdelete=isdelete;
    }

    public int getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(int isdelete) {
        this.isdelete = isdelete;
    }

    public Test_plan_fpa1() {
    }

    @Override
    public String toString() {
        return "Test_plan_fpa1{" +
                "test_name='" + test_name + '\'' +
                ", test_code=" + test_code +
                ", test_begin=" + test_begin +
                ", test_end=" + test_end +
                ", remark='" + remark + '\'' +
                ", isdelete=" + isdelete +
                '}';
    }

    public String getTest_name() {
        return test_name;
    }

    public void setTest_name(String test_name) {
        this.test_name = test_name;
    }

    public int getTest_code() {
        return test_code;
    }

    public void setTest_code(int test_code) {
        this.test_code = test_code;
    }

    public Date getTest_begin() {
        return test_begin;
    }

    public void setTest_begin(Date test_begin) {
        this.test_begin = test_begin;
    }

    public Date getTest_end() {
        return test_end;
    }

    public void setTest_end(Date test_end) {
        this.test_end = test_end;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
