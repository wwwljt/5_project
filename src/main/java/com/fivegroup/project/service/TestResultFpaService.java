package com.fivegroup.project.service;


import com.fivegroup.project.entity.ResultDiv;
import com.fivegroup.project.entity.TestResultFpa;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TestResultFpaService {
    //查询所有并分页
    public List<TestResultFpa> getAllTRF(@Param("begin")int begin, @Param("limit")int limit, TestResultFpa testResultFpa);
    // 删除
    public Boolean deleteTRF(int id);
    // 查询总条数
    public int countTRF(TestResultFpa testResultFpa);
    public ResultDiv getById(int id);
    public Map<String,Integer> queryAll();
}
