package com.fivegroup.project.controller;

import com.fivegroup.project.bean.LayuiBean;
import com.fivegroup.project.entity.TblTesterSas;
import com.fivegroup.project.service.TblTesterSasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/16 16:26
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */

@RestController
public class TblTesterSasController {

    @Autowired
    private TblTesterSasService tblTesterSasService;


    @RequestMapping(value = "/findAllTesterSas", method = RequestMethod.GET)
    public LayuiBean<TblTesterSas> findAll(int page, int limit, String name, String planId){

        List<TblTesterSas> testerSasServiceAll = tblTesterSasService.findAll(page, limit, name, planId);

        System.out.println("name+planId===" + name + ","+planId);

        LayuiBean<TblTesterSas> SasBean = new LayuiBean<>();
        SasBean.setCode(0);
        SasBean.setMsg("");
        SasBean.setCount(50);
        SasBean.setData(testerSasServiceAll);


        return SasBean;
    }


    // 删除数据
    @RequestMapping(value = "/delDataTesterSas")
    public int deleteData(String ids) {

        System.out.println("controller==="+ids);

        List<Integer> idsList = new ArrayList<>();


        String[] strIds = ids.split(";");  // 剔除分号
        for (int i = 0; i < strIds.length; i++){
            idsList.add(Integer.valueOf(strIds[i]));  // 遍历数字添加到数组 idsList
        }

        System.out.println("idsList==="+idsList);

        int i = tblTesterSasService.delData(idsList);

        return i;
    }




}
