package com.fivegroup.project.controller;

import com.fivegroup.project.bean.LayuiBean;
import com.fivegroup.project.entity.TblQuestionSas;
import com.fivegroup.project.service.TblQuestionSasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author DonaldChen
 * @date 2022/9/13 14:59
 * @description: 取法于上，仅得为中；取法于中，故为其下
 */

@RestController
public class TblQuestionSasController {

    @Autowired
    private TblQuestionSasService tblQuestionSasService;


    // 分页查询
    @RequestMapping(value = "/findQuestionSasAll", method = RequestMethod.GET)
    public LayuiBean<TblQuestionSas> findQuestionSasAll(int page, int limit, String question, String person){

        List<TblQuestionSas> questionSasList = tblQuestionSasService.findQuestionSas(page, limit, question, person);


        int i = tblQuestionSasService.selectAll();


        LayuiBean<TblQuestionSas> questionSasBean = new LayuiBean<>();
        questionSasBean.setCode(0);
        questionSasBean.setMsg("");
        questionSasBean.setCount(i);
        questionSasBean.setData(questionSasList);

        return questionSasBean;
    }


    // 删除数据
    @RequestMapping(value = "/delTblQuestionSas")
    public int deleteQuestionSas(String ids) {

        List<Integer> idsList = new ArrayList<>();


        String[] strIds = ids.split(";");  // 剔除分号
        for (int i = 0; i < strIds.length; i++){
            idsList.add(Integer.valueOf(strIds[i]));  // 遍历数字添加到数组 idsList
        }

        int i = tblQuestionSasService.delTblQuestionSas(idsList);

        return i;
    }


    // 添加一条数据
    @RequestMapping(value = "/addTblQuestionSas")
    public Integer addTblQuestionSas(TblQuestionSas tblQuestionSas){

        int i = tblQuestionSasService.addQuestionSas(tblQuestionSas);

        return i;
    }


    // 编辑一条数据
    @RequestMapping(value = "/editQuestionSas")
    public Integer editQuestionSas(TblQuestionSas tblQuestionSas){

        int i = tblQuestionSasService.editQuestionSas(tblQuestionSas);

        return i;
    }



    // 校验问题是否重复
    @RequestMapping(value = "/comparedQuestion")
    public Integer compareQuestion(String question){

        String questioning = tblQuestionSasService.selectComparedQuestion(question);

        // 判断是否为空
        if (questioning == null || questioning.length() == 0){
            return 0;
        }else {
            return 1;  // 已经存在返回 1
        }
    }


}
