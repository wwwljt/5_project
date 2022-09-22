package com.fivegroup.project.entity.vo;

import com.fivegroup.project.entity.TblDept;
import com.fivegroup.project.entity.TblRole;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * (Userinfo)实体类
 *
 * @author makejava
 * @since 2022-09-13 20:01:58
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserinfoVo implements Serializable {
	private static final long serialVersionUID = 447429898731492831L;
	/**
	 * ID
	 */
	private Integer userid;
	/**
	 * 部门
	 */
	private Integer deptid;
	/**
	 * 真实姓名
	 */
	private String username;
	/**
	 * 邮箱
	 */
	private String email;
	/**
	 * 电话
	 */
	private String phonenumber;
	/**
	 * 性别(1男 0女)
	 */
	private String sex;
	/**
	 * 头像
	 */
	private String avatar;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 盐值
	 */
	private String salt;
	/**
	 * 状态（1正常 2停用）
	 */
	private String status;
	/**
	 * 删除标记（1正常 2删除）
	 */
	private String delFlag;
	/**
	 * 创建人
	 */
	private String createBy;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 修改人
	 */
	private String updateBy;
	/**
	 * 修改时间
	 */
	private Date updateTime;
	/**
	 * 备注
	 */
	private String remark;
	/**
	 * 角色id
	 */
	private Integer roleId;
	/**
	 * 部门
	 */
	private TblDept tblDept;
	/**
	 * 角色
	 */
	private TblRole tblRole;
	
}

