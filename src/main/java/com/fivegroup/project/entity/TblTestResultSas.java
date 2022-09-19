package com.fivegroup.project.entity;

import java.io.Serializable;

/**
 * (TblTestResultSas)实体类
 *
 * @author makejava
 * @since 2022-09-17 08:40:49
 */
public class TblTestResultSas implements Serializable {
    private static final long serialVersionUID = -38784172251069978L;
    
    private Integer id;
    
    private Integer testerId;
    
    private Integer questionId;
    
    private String answer;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTesterId() {
        return testerId;
    }

    public void setTesterId(Integer testerId) {
        this.testerId = testerId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }


    @Override
    public String toString() {
        return "TblTestResultSas{" +
                "id=" + id +
                ", testerId=" + testerId +
                ", questionId=" + questionId +
                ", answer='" + answer + '\'' +
                '}';
    }
}

