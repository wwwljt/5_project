package com.fivegroup.project.dao;

import com.fivegroup.project.entity.QuestionFpa;
import com.fivegroup.project.entity.QuestionFpa1;
import org.apache.ibatis.annotations.Param;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@ComponentScan
public interface QuestionFpaMapper {
    //查询所有并分页
    public List<QuestionFpa> getAllQF(@Param("begin")int begin, @Param("limit")int limit, @Param("questionFpa") QuestionFpa questionFpa);
//
    //增加
    public Boolean insertQF(QuestionFpa1 questionFpa);
    // 删除
    public Boolean deleteQF(int id);
    // 修改
    public Boolean updateQF(QuestionFpa questionFpa);
    // 模糊查询
//    public List<Question_fpa> searchQF(Question_fpa questionFpa);
    // 查询总条数
    public int countQF(QuestionFpa questionFpa);
}
