package com.fivegroup.project.controller;

import com.fivegroup.project.bean.LayuiBean;
import com.fivegroup.project.entity.TblTestPlanSas;
import com.fivegroup.project.service.TblTestPlanSasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/15 19:35
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */

@RestController
public class TblTestPlanSasController {

    @Autowired
    private TblTestPlanSasService tblTestPlanSasService;

    @RequestMapping(value = "/findAllPlanSas", method = RequestMethod.GET)
    public LayuiBean<TblTestPlanSas> findAll(int page, int limit, String question, String person){

        List<TblTestPlanSas> planSasServiceAll = tblTestPlanSasService.findAll(page, limit, question, person);

        System.out.println("question+person===" + question + ","+person);

        LayuiBean<TblTestPlanSas> SasBean = new LayuiBean<>();
        SasBean.setCode(0);
        SasBean.setMsg("");
        SasBean.setCount(50);
        SasBean.setData(planSasServiceAll);


        return SasBean;
    }



    // 删除数据
    @RequestMapping(value = "/delDataPlanSas")
    public int deleteData(String ids) {

        System.out.println("controller==="+ids);

        List<Integer> idsList = new ArrayList<>();


        String[] strIds = ids.split(";");  // 剔除分号
        for (int i = 0; i < strIds.length; i++){
            idsList.add(Integer.valueOf(strIds[i]));  // 遍历数字添加到数组 idsList
        }

        System.out.println("idsList==="+idsList);

        int i = tblTestPlanSasService.delData(idsList);

        return i;
    }



    // 添加一条数据
    @RequestMapping(value = "/addDataPlanSas", method = RequestMethod.POST)
    public Integer addData(TblTestPlanSas tblTestPlanSas){

        System.out.println("------------------------------"+tblTestPlanSas);

        int i = tblTestPlanSasService.addData(tblTestPlanSas);

        return i;
    }


    // 编辑一条数据
    @RequestMapping(value = "/editDataPlanSas", method = RequestMethod.POST)
    public Integer editData(TblTestPlanSas tblTestPlanSas){

        System.out.println("==============================="+tblTestPlanSas);

        int i = tblTestPlanSasService.editData(tblTestPlanSas);

        return i;
    }



}
