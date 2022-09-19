package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblTestPlanSas;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/15 19:29
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */
public interface TblTestPlanSasDao {

    /**
     * 查找所有数据，并分页
     *
     */
    List<TblTestPlanSas> findAll(@Param("page") int page, @Param("limit") int limit, @Param("testName") String testName, @Param("person") String person);

    // 删除一条数据
    int delData(List ids);


    // 添加一条数据
    int addData(@Param("tblTestPlanSas") TblTestPlanSas tblTestPlanSas);


    // 编辑一条数据
    int editData(@Param("tblTestPlanSas") TblTestPlanSas tblTestPlanSas);

}
