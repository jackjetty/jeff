package com.justbon.jeff.enums;

import lombok.Getter;

/**
 * 错误枚举
 */
public enum ErrorEnum {
    INNER_ERROR(2, "系统发生异常，请联系管理员"),
    INVALID_ACCESS(401, "无访问权限");

    /**
     * 错误码
     */
    @Getter
    private int code;
    /**
     * 错误信息
     */
    @Getter
    private String msg;

    /**
     * 构造函数
     * @param code
     * @param msg
     */
    ErrorEnum(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}