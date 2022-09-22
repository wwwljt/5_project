package com.aaa.entity;

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
public class Test_result_fpa {
    private int tester_id;
    private Double red_count;
    private Double blue_count;
    private Double yellow_count;
    private Double green_count;
    private String phone;
    private String name;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date create_time;
    private Integer test_plan_id;

    public Test_result_fpa() {
    }

    public Double getRed_count() {
        return red_count;
    }

    public void setRed_count(Double red_count) {
        this.red_count = red_count;
    }

    public Double getBlue_count() {
        return blue_count;
    }

    public void setBlue_count(Double blue_count) {
        this.blue_count = blue_count;
    }

    public Double getYellow_count() {
        return yellow_count;
    }

    public void setYellow_count(Double yellow_count) {
        this.yellow_count = yellow_count;
    }

    public Double getGreen_count() {
        return green_count;
    }

    public void setGreen_count(Double green_count) {
        this.green_count = green_count;
    }

    public int getTester_id() {
        return tester_id;
    }

    public void setTester_id(int tester_id) {
        this.tester_id = tester_id;
    }

    public Test_result_fpa(int tester_id, Double red_count, Double blue_count, Double yellow_count, Double green_count, String phone, String name, Date create_time, Integer test_plan_id) {
        this.tester_id = tester_id;
        this.red_count = red_count;
        this.blue_count = blue_count;
        this.yellow_count = yellow_count;
        this.green_count = green_count;
        this.phone = phone;
        this.name = name;
        this.create_time = create_time;
        this.test_plan_id = test_plan_id;
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

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Integer getTest_plan_id() {
        return test_plan_id;
    }

    public void setTest_plan_id(Integer test_plan_id) {
        this.test_plan_id = test_plan_id;
    }

    @Override
    public String toString() {
        return "Test_result_fpa{" +
                "tester_id=" + tester_id +
                ", red_count=" + red_count +
                ", blue_count=" + blue_count +
                ", yellow_count=" + yellow_count +
                ", green_count=" + green_count +
                ", phone='" + phone + '\'' +
                ", name='" + name + '\'' +
                ", create_time=" + create_time +
                ", test_plan_id=" + test_plan_id +
                '}';
    }
}
