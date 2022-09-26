package com.fivegroup.project.service.impl;


import com.fivegroup.project.dao.TblTestPlanFpaMapper;
import com.fivegroup.project.entity.TblTestPlanFpa;
import com.fivegroup.project.entity.TblTesterFpa;
import com.fivegroup.project.service.TblTestPlanFpaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName Question_fpaServiceImpl
 * @Description 题目管理service实现类，与mapper交互
 * @Author WangDeSheng
 * @Date 2022/9/12 20:31
 * @Version 1.0
 */
@Service
public class TblTestPlanFpaServiceImpl implements TblTestPlanFpaService {
    @Autowired
    private TblTestPlanFpaMapper mapper;
    
    /**
     * 根据 手机号查找 测试计划
     *
     * @param phone
     * @return
     */
    @Override
    public List<TblTesterFpa> findFpaTesterByPhone(String phone) {
        return mapper.findFpaTesterByPhone(phone);
    }
    
    @Override
    public List<TblTestPlanFpa> getAllTTp(int begin, int limit, TblTestPlanFpa TblTestPlanFpa) {
        return mapper.getAllTTp(begin, limit,TblTestPlanFpa);
    }

//    @Override
//    public List<Question_fpa> getAll() {
//        return mapper.getAll();
//    }

    @Override
    public Boolean insertTTp(TblTestPlanFpa TblTestPlanFpa) {
        return mapper.insertTTp(TblTestPlanFpa);
    }

    @Override
    public Boolean deleteTTp(int id) {
        return mapper.deleteTTp(id);
    }

    @Override
    public Boolean updateTTp(TblTestPlanFpa TblTestPlanFpa) {
        return mapper.updateTTp(TblTestPlanFpa);
    }

//    @Override
//    public List<Question_fpa> searchTTp(Question_fpa TblTestPlanFpa) {
//        return mapper.searchTTp(TblTestPlanFpa);
//    }

    @Override
    public int countTTp(TblTestPlanFpa TblTestPlanFpa) {
        return mapper.countTTp(TblTestPlanFpa);
    }


}
