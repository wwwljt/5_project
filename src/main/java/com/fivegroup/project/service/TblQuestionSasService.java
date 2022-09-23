package com.fivegroup.project.service;

import com.fivegroup.project.entity.TblQuestionSas;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/13 14:37
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */

public interface TblQuestionSasService {


    /**
     * 查找所有数据，并分页
     */
    List<TblQuestionSas> findQuestionSas(@Param("page") int page, @Param("limit") int limit, @Param("question") String question, @Param("person") String person);

    // 删除一条数据
    //int delTblQuestionSas(@Param("id") int id);
    int delTblQuestionSas(@Param("ids") List ids);


    // 添加一条数据
    int addQuestionSas(@Param("tblQuestionSas") TblQuestionSas tblQuestionSas);


    // 编辑一条数据
    int editQuestionSas(@Param("tblQuestionSas") TblQuestionSas tblQuestionSas);


}
