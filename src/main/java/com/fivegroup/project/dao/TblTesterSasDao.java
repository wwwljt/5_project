package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblTesterSas;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/16 16:19
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */
public interface TblTesterSasDao {

    /**
     * 查找所有数据，并分页
     *
     */
    List<TblTesterSas> findAll(@Param("page") int page, @Param("limit") int limit, @Param("name") String name, @Param("planId") String planId);


    // 删除一条数据
    int delData(List ids);




}
