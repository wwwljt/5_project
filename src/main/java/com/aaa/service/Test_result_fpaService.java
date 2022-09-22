package com.aaa.service;

import com.aaa.entity.Result_div;
import com.aaa.entity.Test_result_fpa;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface Test_result_fpaService {
    //查询所有并分页
    public List<Test_result_fpa> getAllTRF(@Param("begin")int begin, @Param("limit")int limit,Test_result_fpa testResultFpa);
    // 删除
    public Boolean deleteTRF(int id);
    // 查询总条数
    public int countTRF(Test_result_fpa testResultFpa);
    public Result_div getById(int id);
    public Map<String,Integer> queryAll();
}
