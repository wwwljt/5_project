package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.UserinfoDao;
import com.fivegroup.project.entity.Userinfo;
import com.fivegroup.project.service.UserinfoService;
import com.fivegroup.project.util.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/21 9:48
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */

@Service
public class UserinfoServiceImpl implements UserinfoService {

    @Autowired
    private UserinfoDao userinfoDao;



    @Override
    public List<Userinfo> findAll(int page, int limit, String userId, String userName) {

        page = (page - 1) * limit;

        List<Userinfo> all = userinfoDao.findAll(page, limit, userId, userName);

        System.out.println("userId+userName===" + userId+","+userName);

        return all;
    }



    @Override
    public int delData(List ids) {

        int i = userinfoDao.delData(ids);

        return i;
    }



    @Override
    public int addData(Userinfo userinfo) {

        userinfo.setCreateTime(new Date());  // 设置创建时间

        // 使用MD5对密码进行加盐加密
        String password = userinfo.getPassword();  // 获取对象中的密码
        String salt = MD5.getSalt();  // 获取一个随机盐值
        String encrypt = MD5.encrypt(password + salt);// 进行加密

        userinfo.setPassword(encrypt);  // 把加密后的密码存入数据库
        userinfo.setSalt(salt);  // 把盐值存入数据库

        int i = userinfoDao.addData(userinfo);

        return i;
    }



    @Override
    public int editData(Userinfo userinfo) {

        userinfo.setUpdateTime(new Date());

        int i = userinfoDao.editData(userinfo);

        return i;
    }
}
