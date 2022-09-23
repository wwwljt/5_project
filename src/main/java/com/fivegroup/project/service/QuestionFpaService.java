package com.fivegroup.project.service;


import com.fivegroup.project.entity.QuestionFpa;
import com.fivegroup.project.entity.QuestionFpa1;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuestionFpaService {
    //查询所有并分页
    public List<QuestionFpa> getAllQF(@Param("begin")int begin, @Param("limit")int limit, QuestionFpa questionFpa);
//    public List<Question_fpa> getAll();
    //增加
    public Boolean insertQF(QuestionFpa1 questionFpa);
    // 删除
    public Boolean deleteQF(int id);
    // 修改
    public Boolean updateQF(QuestionFpa questionFpa);
//    // 模糊查询
//    public List<Question_fpa> searchQF(Question_fpa questionFpa);
    // 查询总条数
    public int countQF(QuestionFpa questionFpa);
}
