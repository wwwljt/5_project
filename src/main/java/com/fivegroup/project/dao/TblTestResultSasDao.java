package com.fivegroup.project.dao;

import com.fivegroup.project.entity.TblTestResultSas;

import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/17 9:21
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */
public interface TblTestResultSasDao {




    // 查询测试结果表
    List<TblTestResultSas> findAnswer();

}
