package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TblTestResultSasDao;
import com.fivegroup.project.entity.TblTestResultSas;
import com.fivegroup.project.service.TblTestResultSasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/17 10:35
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */

@Service
public class TblTestResultSasServiceImpl implements TblTestResultSasService {

    @Autowired
    private TblTestResultSasDao tblTestResultSasDao;


    @Override
    public List<TblTestResultSas> findAnswer() {

        List<TblTestResultSas> all = tblTestResultSasDao.findAnswer();

        return all;
    }
}
