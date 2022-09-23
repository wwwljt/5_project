package com.fivegroup.project.dao;


import com.fivegroup.project.entity.ResultDiv;
import com.fivegroup.project.entity.TestResultFpa;
import org.apache.ibatis.annotations.Param;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @ClassName Test_result_fpaMapper
 * @Description TODO
 * @Author WangDeSheng
 * @Date 2022/9/16 19:38
 * @Version 1.0
 */
@Repository
@ComponentScan
public interface TestResultFpaMapper {
    //查询所有并分页
    public List<TestResultFpa> getAllTRF(@Param("begin")int begin, @Param("limit")int limit, @Param("testResult") TestResultFpa testResultFpa);

    public Boolean deleteTRF(int id);

    public int countTRF(TestResultFpa testResultFpa);
    public ResultDiv getById(int id);
    public List<TestResultFpa> queryAll();
}
