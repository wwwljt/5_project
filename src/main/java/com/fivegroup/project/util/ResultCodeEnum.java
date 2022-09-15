package com.fivegroup.project.util;

import lombok.Getter;

/**
 * 统一返回结果状态信息类
 *
 * @author Www
 */
@Getter
public enum ResultCodeEnum {
	/**
	 * 状态信息
	 */
	SUCCESS(0, "成功"),
	FAIL(201, "失败"),
	SERVICE_ERROR(2012, "服务异常"),
	ILLEGAL_REQUEST(204, "非法请求"),
	PAY_RUN(205, "支付中"),
	ARGUMENT_VALID_ERROR(206, "参数校验错误"),
	
	LOGIN_ERROR(207, "用户名或密码错误"),
	LOGIN_AUTH(208, "未登陆"),
	PERMISSION(209, "没有权限"),
	SECKILL_NO_START(210, "秒杀还没开始"),
	SECKILL_RUN(211, "正在排队中"),
	SECKILL_NO_PAY_ORDER(212, "您有未支付的订单"),
	SECKILL_FINISH(213, "已售罄"),
	SECKILL_END(214, "秒杀已结束"),
	SECKILL_SUCCESS(215, "抢单成功"),
	SECKILL_FAIL(216, "抢单失败"),
	SECKILL_ILLEGAL(217, "请求不合法"),
	SECKILL_ORDER_SUCCESS(218, "下单成功"),
	COUPON_GET(220, "优惠券已经领取"),
	COUPON_LIMIT_GET(221, "优惠券已发放完毕"),
	//2022-02-22
	LOGIN_CODE(222, "长时间未操作,会话已失效,请刷新页面后重试!"),
	CODE_ERROR(223, "验证码错误!"),
	TOKEN_ERROR(224, "Token无效!");
	/**
	 * 状态码
	 */
	private final Integer code;
	
	/**
	 * 状态信息
	 */
	private final String message;
	
	ResultCodeEnum(Integer code, String message) {
		this.code = code;
		this.message = message;
	}
}
