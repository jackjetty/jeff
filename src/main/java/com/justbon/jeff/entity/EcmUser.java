package com.justbon.jeff.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 用户表
 * </p>
 *
 * @author jeff
 * @since 2021-01-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class EcmUser implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 租户id
     */
    private String tenantId;

    /**
     * 企业id
     */
    private String groupId;

    /**
     * 账号
     */
    private String account;

    /**
     * 昵称
     */
    private String name;

    /**
     * 真名
     */
    private String realName;

    /**
     * 密码
     */
    private String password;

    /**
     * 性别，1 - 男性，2 - 女性
     */
    private Integer sex;

    /**
     * 邮件
     */
    private String email;

    /**
     * 手机号码
     */
    private String phone;

    /**
     * 描述
     */
    private String description;

    /**
     * 角色id
     */
    private Integer roleId;

    /**
     * 数据组id
     */
    private Integer dataGroupId;

    /**
     * 用户类型，1-平台超管员，2-企业超管员，3-普通员工
     */
    private Integer type;

    /**
     * 部门id
     */
    private String deptartmentId;

    private String deptartmentPath;

    /**
     * 禁用标识，0-停用，1-启用
     */
    private Integer status;

    /**
     * 在离职状态，1-在职，2离职
     */
    private Integer employmentStatus;

    /**
     * 删除标识，0-正常，1-删除
     */
    private Integer isDeleted;

    /**
     * 数据来源，1-OA同步，2-ECM系统创建
     */
    private Integer dataFrom;

    /**
     * 最后一次登录时间
     */
    private LocalDateTime lastLoginTime;

    /**
     * 创建人id
     */
    private Integer createUserId;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 修改人id
     */
    private Integer updateUserId;

    /**
     * 最近一次修改时间
     */
    private LocalDateTime updateTime;

    /**
     * 备注
     */
    private String comment;

    /**
     * 职位 1-管理 2-普通
     */
    private Integer positionId;


}
