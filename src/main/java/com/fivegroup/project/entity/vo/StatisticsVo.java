package com.fivegroup.project.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/15  15:59  星期四
 * <p>
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class StatisticsVo {
	private Integer count;
	private Integer normal;
	private Integer slight;
	private Integer moderate;
	private Integer severe;
}
