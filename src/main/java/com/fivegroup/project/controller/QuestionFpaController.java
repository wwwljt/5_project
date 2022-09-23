package com.fivegroup.project.controller;


import com.fivegroup.project.entity.QuestionFpa;
import com.fivegroup.project.entity.QuestionFpa1;
import com.fivegroup.project.service.QuestionFpaService;
import com.fivegroup.project.util.ResultBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

/**
 * @ClassName Question_fpaController
 * @Description 进行增删改查操作
 * @Author WangDeSheng
 * @Date 2022/9/12 20:38
 * @Version 1.0
 */
@RestController
@RequestMapping("/questionFpa")
public class QuestionFpaController {
    @Autowired
    private QuestionFpaService QFService;
    @RequestMapping("/getAll")
    public ResultBean<QuestionFpa> getAll(@RequestParam("page")int page, @RequestParam("limit")int limit, QuestionFpa questionFpa){
        int bgein=(page-1)*limit;
        List<QuestionFpa> all = QFService.getAllQF(bgein, limit,questionFpa);
        ResultBean<QuestionFpa> rb=new ResultBean<>();
        rb.setCode(0);
        rb.setMsg("");
        rb.setCount(QFService.countQF(questionFpa));
        rb.setData(all);
        System.out.println(rb);
        return rb;
    }
    @RequestMapping("/del")
    public Boolean del(@RequestParam("id")int id) throws IOException {
        return QFService.deleteQF(id);
    }
    @RequestMapping("/update")
    public Boolean update(QuestionFpa QuestionFpa){
        System.out.println(QuestionFpa);
        return  QFService.updateQF(QuestionFpa);
    }
    @RequestMapping("/insert")
    public Boolean insert(QuestionFpa1 Question_fpa){
        System.out.println(Question_fpa);
        Boolean aBoolean = QFService.insertQF(Question_fpa);
        System.out.println(aBoolean);
        return aBoolean;
    }
    @RequestMapping("/deleteMore")
    public Boolean deleteMore(@RequestParam("map")String map){
        String substring = map.substring(1, map.length() - 1);
        String[] split = substring.split(",");
        System.out.println(split);
        Boolean result=true;
        for (String s:split
             ) {
            int i = Integer.parseInt(s);
            result = QFService.deleteQF(i);
            System.out.println(result);
            if (result!=true){
                return false;
            }
        }
        return result;
    }
}
