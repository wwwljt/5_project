package com.fivegroup.project.controller;

import com.fivegroup.project.entity.ResultDiv;
import com.fivegroup.project.entity.ResultVO;
import com.fivegroup.project.entity.TestResultFpa;
import com.fivegroup.project.service.TestResultFpaService;
import com.fivegroup.project.util.ResultBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * @ClassName Test_result_fpaController
 * @Description TODO
 * @Author WangDeSheng
 * @Date 2022/9/18 15:44
 * @Version 1.0
 */
@RestController
@RequestMapping("/result")
public class TestResultFpaController {
    @Autowired
    private TestResultFpaService TRFService;
    @RequestMapping("/getAllTRF")
    public ResultBean<TestResultFpa> getAll(@RequestParam("page")int page, @RequestParam("limit")int limit, TestResultFpa testResultFpa){
        int begin=(page-1)*limit;
        List<TestResultFpa> allTRF = TRFService.getAllTRF(begin, limit, testResultFpa);
        ResultBean resultBean = new ResultBean();
        resultBean.setMsg("");
        resultBean.setCode(0);
        resultBean.setCount(TRFService.countTRF(testResultFpa));
        resultBean.setData(allTRF);
        return resultBean;
    }
    @RequestMapping("/deleteMore")
    public Boolean deleteMore(int[] idList){
        Boolean aBoolean = TRFService.deleteTRF(idList);
        Boolean a=TRFService.deleteTTf(idList);
        if(aBoolean==a==true){
            return true;
        }
        return false;
    }
    @RequestMapping("/getById")
    public ResultVO getById(@RequestParam("id") Integer id){
        ResultDiv byId = TRFService.getById(id);
        ResultVO<ResultDiv> vo = new ResultVO<>();
         vo.setData(byId);
         vo.setCode(0);
         vo.setMsg("");
         vo.setCount(1);
       return vo;
    }
    @RequestMapping("/queryAll")
    public ResultVO queryAll(){
        Map<String, Integer> all = TRFService.queryAll();
        ResultVO<Object> vo = new ResultVO<>();
        vo.setCode(0);
        vo.setMsg("");
        vo.setData(all);
        return vo;
    }
}
