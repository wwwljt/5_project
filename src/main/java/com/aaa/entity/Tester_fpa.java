package com.aaa.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @ClassName Tester_fpa
 * @Description TODO
 * @Author WangDeSheng
 * @Date 2022/9/15 21:34
 * @Version 1.0
 */
public class Tester_fpa {
    private int id;
    private String name;
    private String phone;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date create_time;
    private int test_plan_id;

    public Tester_fpa(int id, String name, String phone, Date create_time, int test_plan_id) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.create_time = create_time;
        this.test_plan_id = test_plan_id;
    }

    public Tester_fpa() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
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

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public int getTest_plan_id() {
        return test_plan_id;
    }

    public void setTest_plan_id(int test_plan_id) {
        this.test_plan_id = test_plan_id;
    }

    @Override
    public String toString() {
        return "Tester_fpa{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", create_time=" + create_time +
                ", test_plan_id=" + test_plan_id +
                '}';
    }
}
