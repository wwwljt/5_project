package com.aaa.mapper;

import com.aaa.entity.Result_div;
import com.aaa.entity.Test_result_fpa;
import org.apache.ibatis.annotations.Param;
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
public interface Test_result_fpaMapper {
    //查询所有并分页
    public List<Test_result_fpa> getAllTRF(@Param("begin")int begin, @Param("limit")int limit, @Param("test_result")Test_result_fpa test_result_fpa);
    //
    //增加
  //  public Boolean insertTRF(Question_fpa1 questionFpa);
    // 删除
    public Boolean deleteTRF(int id);
    // 修改
    //public Boolean updateTRF(Question_fpa questionFpa);
    // 模糊查询
//    public List<Question_fpa> searchQF(Question_fpa questionFpa);
    // 查询总条数
    public int countTRF(Test_result_fpa test_result_fpa);
    public Result_div getById(int id);
    public List<Test_result_fpa> queryAll();
}
