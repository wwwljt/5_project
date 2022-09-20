package com.fivegroup.project.controller;

import com.fivegroup.project.bean.LayuiBean;
import com.fivegroup.project.entity.TblTesterSas;
import com.fivegroup.project.service.TblTesterSasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
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

        List<Integer> idsList = new ArrayList<>();


        String[] strIds = ids.split(";");  // 剔除分号
        for (int i = 0; i < strIds.length; i++){
            idsList.add(Integer.valueOf(strIds[i]));  // 遍历数字添加到数组 idsList
        }

        System.out.println("idsList==="+idsList);

        int i = tblTesterSasService.delData(idsList);

        return i;
    }


    // 查看饼图信息
    @RequestMapping(value = "/findPie")
    public List<Integer> findPie(){

        List<TblTesterSas> pie = tblTesterSasService.findPie();

        List<Integer> peopleNums = new ArrayList<>();

        //System.out.println("SIZE:::::"+pie.size());

        BigDecimal score, bInt;
        int a1;

        //遍历pie,拿到字段和
        for (TblTesterSas tbl: pie) {
            BigDecimal forward = tbl.getForward();
            BigDecimal inversion = tbl.getInversion();

            // 把BigDecimal转换成int类型
            score = forward.add(inversion);
            bInt =new BigDecimal(String.valueOf(score));
            a1 = bInt.intValue();

            peopleNums.add(a1);

        }


        // 判断字段和所处的范围，并统计个数
        int a = 0, b = 0, c = 0, d = 0;

        for (int i = 0; i < peopleNums.size(); i++) {
            if (peopleNums.get(i) <= 50){
                a += 1;
            } else if (peopleNums.get(i) <= 60) {
                b += 1;
            } else if (peopleNums.get(i) <= 70) {
                c += 1;
            } else if (peopleNums.get(i) > 70) {
                d += 1;
            }
        }

        // 把个数添加到要返回的集合中
        List<Integer> backNum = new ArrayList<>();

        backNum.add(a);
        backNum.add(b);
        backNum.add(c);
        backNum.add(d);

        System.out.println("======"+backNum);

        return backNum;
    }




}
