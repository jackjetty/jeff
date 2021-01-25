package com.justbon.jeff.service.impl;

import com.justbon.jeff.entity.EcmUser;
import com.justbon.jeff.mapper.EcmUserMapper;
import com.justbon.jeff.service.IEcmUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author jeff
 * @since 2021-01-25
 */
@Service
public class EcmUserServiceImpl extends ServiceImpl<EcmUserMapper, EcmUser> implements IEcmUserService {

}
