package com.fivegroup.project.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.io.Serializable;

/**
 * (Userinfo)实体类
 *
 * @author makejava
 * @since 2022-09-21 09:43:48
 */

@Data
public class Userinfo implements Serializable {
    private static final long serialVersionUID = -83332464318206980L;
    /**
     * ID
     */
    private Integer userId;
    /**
     * 部门
     */
    private Integer deptId;
    /**
     * 真实姓名
     */
    private String userName;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 电话
     */
    private String phoneNumber;
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
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**
     * 修改人
     */
    private String updateBy;
    /**
     * 修改时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;
    /**
     * 备注
     */
    private String remark;
    /**
     * 角色id
     */
    private Integer roleId;


    // 数据库不存在的字段
    @TableField(exist = false)
    private String deptName;


    @TableField(exist = false)
    private String roleName;





}

