package com.justbon.jeff.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import java.util.List;
import java.util.Map;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Api(tags = "测试操作")
public class TestController{
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @GetMapping("/list")
    @ApiOperation(value = "用户列表", tags = "用户查看")
    public List<Map<String,Object>> userList(){
        String sql="select * from ecm_user ";
        List<Map<String,Object>> result=jdbcTemplate.queryForList(sql);
        return result;
    }
}