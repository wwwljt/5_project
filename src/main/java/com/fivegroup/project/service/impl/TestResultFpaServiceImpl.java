package com.fivegroup.project.service.impl;

import com.fivegroup.project.dao.TestResultFpaMapper;
import com.fivegroup.project.entity.ResultDiv;
import com.fivegroup.project.entity.TestResultFpa;
import com.fivegroup.project.service.TestResultFpaService;
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
public class TestResultFpaServiceImpl implements TestResultFpaService {
    @Autowired
    private TestResultFpaMapper mapper;
    @Override
    public List<TestResultFpa> getAllTRF(int begin, int limit, TestResultFpa testResultFpa3) {
        return mapper.getAllTRF(begin, limit, testResultFpa3);
    }

    @Override
    public Boolean deleteTRF(int id) {
        return mapper.deleteTRF(id);
    }

    @Override
    public int countTRF(TestResultFpa testResultFpa) {
        return mapper.countTRF(testResultFpa);
    }

    @Override
    public ResultDiv getById(int id) {
        return mapper.getById(id);
    }

    @Override
    public Map<String,Integer> queryAll() {
        List<TestResultFpa> test_resultFpas = mapper.queryAll();
        int red=0,yellow=0,green=0,blue=0,compound=0;
        for (TestResultFpa item: test_resultFpas){
            Double blueCount = item.getBlueCount();
            Double greenCount = item.getGreenCount();
            Double redCount = item.getRedCount();
            Double yellowCount = item.getYellowCount();
            if (blueCount>greenCount&&blueCount>redCount&&blueCount>yellowCount){
                blue++;
            }else if(greenCount>blueCount&&greenCount>redCount&&greenCount>yellowCount){
                green++;
            }else if(redCount>blueCount&&redCount>greenCount&&redCount>yellowCount){
                red++;
            }else if(yellowCount>blueCount&&yellowCount>greenCount&&yellowCount>redCount){
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
