package com.fivegroup.project.dao;


import com.fivegroup.project.entity.TblTestPlanFpa;
import com.fivegroup.project.entity.TblTesterFpa;
import org.apache.ibatis.annotations.Param;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@ComponentScan
public interface TblTestPlanFpaMapper {
    //查询所有并分页
    public List<TblTestPlanFpa> getAllTTp(@Param("begin")int begin, @Param("limit")int limit, @Param("testPlanFpa")TblTestPlanFpa testPlanFpa);
//
    //增加
    public Boolean insertTTp(TblTestPlanFpa testPlanFpa);
    // 删除
    public Boolean deleteTTp(int id);
    // 修改
    public Boolean updateTTp(TblTestPlanFpa testPlanFpa);
    // 模糊查询
//    public List<Question_fpa> searchQF(Question_fpa questionFpa);
    // 查询总条数
    public int countTTp(TblTestPlanFpa testPlanFpa);
    /**
     * 根据 手机号查找 测试计划
     *
     * @param phone
     * @return
     */
	List<TblTesterFpa> findFpaTesterByPhone(@Param("phone") String phone);
}
