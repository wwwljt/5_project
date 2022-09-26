package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblQuestionSas;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/13 14:30
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */
public interface TblQuestionSasDao {


    /**
     * 查找所有数据，并分页
     *
     * @param page
     * @param limit
     */
    List<TblQuestionSas> findQuestionSas(@Param("page") int page, @Param("limit") int limit, @Param("question") String question, @Param("person") String person);


    // 查询条数
    int selectAll();


    // 删除一条数据
    int delTblQuestionSas(List ids);


    // 添加一条数据
    int addQuestionSas(@Param("tblQuestionSas") TblQuestionSas tblQuestionSas);


    // 编辑一条数据
    int editQuestionSas(@Param("tblQuestionSas") TblQuestionSas tblQuestionSas);


}
