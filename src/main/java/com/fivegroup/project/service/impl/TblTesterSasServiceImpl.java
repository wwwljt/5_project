package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblTesterSasDao;
import com.fivegroup.project.entity.TblTesterSas;
import com.fivegroup.project.service.TblTesterSasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/16 16:26
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */

@Service
public class TblTesterSasServiceImpl implements TblTesterSasService {

    @Autowired
    private TblTesterSasDao tblTesterSasDao;

    @Override
    public List<TblTesterSas> findAll(int page, int limit, String name, String planId) {

        page = (page - 1) * limit;

        List<TblTesterSas> all = tblTesterSasDao.findAll(page, limit, name, planId);

        return all;
    }

    @Override
    public int delData(List ids) {

        int i = tblTesterSasDao.delData(ids);

        return i;
    }
}
