package com.fivegroup.project.dao;

import com.fivegroup.project.entity.Userinfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/21 9:46
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */
public interface UserinfoDao {

    List<Userinfo> findAll(@Param("page") int page, @Param("limit") int limit, @Param("userId") String userId, @Param("userName") String userName);


    // 删除一条数据
    int delData(List ids);


    // 添加一条数据
    int addData(@Param("userinfo") Userinfo userinfo);


    // 编辑一条数据
    int editData(@Param("userinfo") Userinfo userinfo);


}
