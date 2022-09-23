package com.fivegroup.project.util;

import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/8/22 20:24
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */
public class LayuiBean<T> {


    private int code;
    private String msg;
    private int count;
    private List<T> data;


    /* 省略构造 get/set toString */

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }


    @Override
    public String toString() {
        return "ResultBean{" +
                "code=" + code +
                ", msg='" + msg + '\'' +
                ", count=" + count +
                ", data=" + data +
                '}';
    }

}
