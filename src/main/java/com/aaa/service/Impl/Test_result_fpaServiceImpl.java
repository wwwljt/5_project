package com.aaa.service.Impl;

import com.aaa.entity.Result_div;
import com.aaa.entity.Test_result_fpa;
import com.aaa.mapper.Test_result_fpaMapper;
import com.aaa.service.Test_result_fpaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName Test_result_fpaServiceImpl
 * @Description TODO
 * @Author WangDeSheng
 * @Date 2022/9/18 14:36
 * @Version 1.0
 */
@Service
public class Test_result_fpaServiceImpl implements Test_result_fpaService {
    @Autowired
    private Test_result_fpaMapper mapper;
    @Override
    public List<Test_result_fpa> getAllTRF(int begin, int limit, Test_result_fpa testResultFpa3) {
        return mapper.getAllTRF(begin, limit, testResultFpa3);
    }

    @Override
    public Boolean deleteTRF(int id) {
        return mapper.deleteTRF(id);
    }

    @Override
    public int countTRF(Test_result_fpa testResultFpa) {
        return mapper.countTRF(testResultFpa);
    }

    @Override
    public Result_div getById(int id) {
        return mapper.getById(id);
    }

    @Override
    public Map<String,Integer> queryAll() {
        List<Test_result_fpa> test_result_fpas = mapper.queryAll();
        int red=0,yellow=0,green=0,blue=0,compound=0;
        for (Test_result_fpa item:test_result_fpas){
            Double blue_count = item.getBlue_count();
            Double green_count = item.getGreen_count();
            Double red_count = item.getRed_count();
            Double yellow_count = item.getYellow_count();
            if (blue_count>green_count&&blue_count>red_count&&blue_count>yellow_count){
                blue++;
            }else if(green_count>blue_count&&green_count>red_count&&green_count>yellow_count){
                green++;
            }else if(red_count>blue_count&&red_count>green_count&&red_count>yellow_count){
                red++;
            }else if(yellow_count>blue_count&&yellow_count>green_count&&yellow_count>red_count){
                yellow++;
            }else {
                compound++;
            }
        }
        HashMap<String, Integer> map = new HashMap<>();
        map.put("red",red);
        map.put("green",green);
        map.put("yellow",yellow);
        map.put("blue",blue);
        map.put("compound",compound);
        return map;
    }
}
