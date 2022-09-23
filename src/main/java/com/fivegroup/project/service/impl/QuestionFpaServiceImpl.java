package com.fivegroup.project.service.impl;


import com.fivegroup.project.dao.QuestionFpaMapper;
import com.fivegroup.project.entity.QuestionFpa;
import com.fivegroup.project.entity.QuestionFpa1;
import com.fivegroup.project.service.QuestionFpaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName Question_fpaServiceImpl
 * @Description 题目管理service实现类，与mapper交互
 * @Author WangDeSheng
 * @Date 2022/9/12 20:31
 * @Version 1.0
 */
@Service
public class QuestionFpaServiceImpl implements QuestionFpaService {
    @Autowired
    private QuestionFpaMapper mapper;
    @Override
    public List<QuestionFpa> getAllQF(int begin, int limit, QuestionFpa questionFpa) {
        return mapper.getAllQF(begin, limit,questionFpa);
    }

//    @Override
//    public List<Question_fpa> getAll() {
//        return mapper.getAll();
//    }

    @Override
    public Boolean insertQF(QuestionFpa1 questionFpa) {
        return mapper.insertQF(questionFpa);
    }

    @Override
    public Boolean deleteQF(int id) {
        return mapper.deleteQF(id);
    }

    @Override
    public Boolean updateQF(QuestionFpa questionFpa) {
        return mapper.updateQF(questionFpa);
    }

//    @Override
//    public List<Question_fpa> searchQF(Question_fpa questionFpa) {
//        return mapper.searchQF(questionFpa);
//    }

    @Override
    public int countQF(QuestionFpa questionFpa) {
        return mapper.countQF(questionFpa);
    }


}
