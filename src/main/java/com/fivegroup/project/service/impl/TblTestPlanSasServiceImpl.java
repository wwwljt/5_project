package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblTestPlanSasDao;
import com.fivegroup.project.entity.TblTestPlanSas;
import com.fivegroup.project.entity.TblTesterSas;
import com.fivegroup.project.service.TblTestPlanSasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/15 19:33
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */

@Service
public class TblTestPlanSasServiceImpl implements TblTestPlanSasService {

    @Autowired
    private TblTestPlanSasDao tblTestPlanSasDao;
    @Override
    public List<TblTesterSas> findSasTesterByPhone(String phone) {
        return tblTestPlanSasDao.findSasTesterByPhone(phone);
    }
    
    
    // 查找
    @Override
    public List<TblTestPlanSas> findAll(int page, int limit, String testName, String person) {

        page = (page - 1) * limit;

        List<TblTestPlanSas> all = tblTestPlanSasDao.findAll(page, limit, testName, person);

        return all;
    }

    // 查询条数
    @Override
    public int selectAll() {

        int i = tblTestPlanSasDao.selectAll();

        return i;
    }

    // 删除
    @Override
    public int delData(List ids) {

        int i = tblTestPlanSasDao.delData(ids);

        return i;
    }

    // 添加
    @Override
    public int addData(TblTestPlanSas tblTestPlanSas) {

        tblTestPlanSas.setCreateTime(new Date());  // 设置时间

        // 设置六位随机数
        int i1 = (int) ((Math.random() * 9 + 1) * 100000);
        tblTestPlanSas.setTestCode(i1);

        int i = tblTestPlanSasDao.addData(tblTestPlanSas);

        return i;
    }

    // 编辑
    @Override
    public int editData(TblTestPlanSas tblTestPlanSas) {

        tblTestPlanSas.setUpdateTime(new Date());

        int i = tblTestPlanSasDao.editData(tblTestPlanSas);

        return i;
    }
}
