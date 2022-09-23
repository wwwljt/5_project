package com.fivegroup.project.entity;

import java.util.List;

/**
 * @ClassName ResultBean
 * @Description 视图对象
 * @Author WangDeSheng
 * @Date 2022/8/18 21:20
 * @Version 1.0
 */
public class ResultBean<T> {
    private int code;
    private String msg;
    private int count;
    private List<T> data;

    public ResultBean() {
    }

    public ResultBean(int code, String msg, int count, List<T> data) {
        this.code = code;
        this.msg = msg;
        this.count = count;
        this.data = data;
    }

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
