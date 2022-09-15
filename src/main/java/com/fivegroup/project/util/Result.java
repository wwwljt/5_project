package com.fivegroup.project.util;

import lombok.Data;

/**
 * 全局统一返回结果类
 *
 * @author Www
 */
@Data
public class Result<T> {

	private Integer count;
	
	public Integer getCount() {
		return count;
	}
	
	public void setCount(Integer count) {
		this.count = count;
	}
	
	private Integer code;
	
	private String message;
	
	private T data;
	
	public Result() {
	}
	
	/**
	 * 返回数据
	 *
	 * @param data
	 * @param <T>
	 * @return
	 */
	protected static <T> Result<T> build(T data) {
		Result<T> result = new Result<T>();
		if (data != null) {
			result.setData(data);
		}
		return result;
	}
	
	/**
	 * 创建一个Result 实例
	 *
	 * @param body
	 * @param resultCodeEnum
	 * @param <T>
	 * @return
	 */
	public static <T> Result<T> build(T body, ResultCodeEnum resultCodeEnum) {
		Result<T> result = build(body);
		result.setCode(resultCodeEnum.getCode());
		result.setMessage(resultCodeEnum.getMessage());
		return result;
	}
	public static <T> Result<T> build(T body, ResultCodeEnum resultCodeEnum,Integer count) {
		Result<T> result = build(body);
		result.setCode(resultCodeEnum.getCode());
		result.setMessage(resultCodeEnum.getMessage());
		result.setCount(count);
		return result;
	}
	
	/**
	 * 成功
	 *
	 * @param <T>
	 * @return
	 */
	public static <T> Result<T> ok() {
		return Result.ok(null);
	}
	
	/**
	 * 操作成功
	 *
	 * @param data
	 * @param <T>
	 * @return
	 */
	public static <T> Result<T> ok(T data) {
		Result<T> result = build(data);
		return build(data, ResultCodeEnum.SUCCESS);
	}
	/**
	 * 操作成功
	 *
	 * @param data
	 * @param <T>
	 * @return
	 */
	public static <T> Result<T> ok(T data,Integer count) {
		Result<T> result = build(data);
		return build(data, ResultCodeEnum.SUCCESS,count);
	}
	
	public static <T> Result<T> fail() {
		return Result.fail(null);
	}
	
	/**
	 * 操作失败
	 *
	 * @param data
	 * @param <T>
	 * @return
	 */
	public static <T> Result<T> fail(T data) {
		Result<T> result = build(data);
		return build(data, ResultCodeEnum.FAIL);
	}
	
	public Result<T> message(String msg) {
		this.setMessage(msg);
		return this;
	}
	
	public Result<T> code(Integer code) {
		this.setCode(code);
		return this;
	}
	
	/**
	 * 判断状态是否成功
	 *
	 * @return
	 */
	public boolean isOk() {
		return this.getCode().intValue() == ResultCodeEnum.SUCCESS.getCode().intValue();
	}
	
}
