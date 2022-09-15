package com.fivegroup.project.util;

import java.util.List;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/8/22  17:33  星期一
 * <p>
 */
public class ResultBean<T> {
	/**
	 * 状态码
	 */
	private Integer code;
	/**
	 * 返回信息
	 */
	private String msg;
	/**
	 * 总记录数
	 */
	private Integer count;
	/**
	 * 返回的数据
	 */
	private List<T> data;
	
	public ResultBean(Integer code, String msg, Integer count, List<T> data) {
		this.code = code;
		this.msg = msg;
		this.count = count;
		this.data = data;
	}
	
	public ResultBean() {
	}
	
	public Integer getCode() {
		return code;
	}
	
	public void setCode(Integer code) {
		this.code = code;
	}
	
	public String getMsg() {
		return msg;
	}
	
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	public Integer getCount() {
		return count;
	}
	
	public void setCount(Integer count) {
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
