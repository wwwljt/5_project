package com.aaa.entity;

/**
 * @ClassName Question_fpa1
 * @Description TODO
 * @Author WangDeSheng
 * @Date 2022/9/15 16:19
 * @Version 1.0
 */
public class Question_fpa1 {
    private int id;
    private String question;
    private String option_a;
    private String option_b;
    private String option_c;
    private String option_d;
    private int type;
    private int status;


    public Question_fpa1(int id, String question, String option_a, String option_b, String option_c, String option_d, int type, int status) {
        this.id = id;
        this.question = question;
        this.option_a = option_a;
        this.option_b = option_b;
        this.option_c = option_c;
        this.option_d = option_d;
        this.type = type;
        this.status = status;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getOption_a() {
        return option_a;
    }

    public void setOption_a(String option_a) {
        this.option_a = option_a;
    }

    public String getOption_b() {
        return option_b;
    }

    public void setOption_b(String option_b) {
        this.option_b = option_b;
    }

    public String getOption_c() {
        return option_c;
    }

    public void setOption_c(String option_c) {
        this.option_c = option_c;
    }

    public String getOption_d() {
        return option_d;
    }

    public void setOption_d(String option_d) {
        this.option_d = option_d;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }


    public Question_fpa1() {
    }

    @Override
    public String toString() {
        return "Question_fpa1{" +
                "id=" + id +
                ", question='" + question + '\'' +
                ", option_a='" + option_a + '\'' +
                ", option_b='" + option_b + '\'' +
                ", option_c='" + option_c + '\'' +
                ", option_d='" + option_d + '\'' +
                ", type=" + type +
                ", status=" + status+
                '}';
    }
}
