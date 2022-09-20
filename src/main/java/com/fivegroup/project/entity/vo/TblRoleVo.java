package com.fivegroup.project.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * <p>
 *
 * @author Www
 * <p>
 * 邮箱： 483223455@qq.com
 * <p>
 * 创建时间: 2022/9/17  14:30  星期六
 * <p>
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TblRoleVo {
	/**
	 * 角色ID
	 */
	private Integer roleId;
	/**
	 * 角色名称
	 */
	private String roleName;
	/**
	 * 角色权限字符串
	 */
	private String roleKey;
	/**
	 * 显示顺序
	 */
	private Integer roleSort;
	/**
	 * 角色状态（0正常 1停用）
	 */
	private String status;
	/**
	 * 删除标志（0代表存在 2代表删除）
	 */
	private String flag;
	/**
	 * 创建者
	 */
	private String createBy;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 更新者
	 */
	private String updateBy;
	/**
	 * 更新时间
	 */
	private Date updateTime;
	/**
	 * 备注
	 */
	private String remark;
	/**
	 * 菜单 id
	 */
	private Integer [] menus;
}
