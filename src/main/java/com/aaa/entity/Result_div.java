package com.aaa.entity;

/**
 * @ClassName Result_div
 * @Description TODO
 * @Author WangDeSheng
 * @Date 2022/9/20 8:34
 * @Version 1.0
 */
public class Result_div {
    private int id;
    private String div1;
    private String div2;
    private String div3;

    public Result_div(int id, String div1, String div2, String div3) {
        this.id = id;
        this.div1 = div1;
        this.div2 = div2;
        this.div3 = div3;
    }

    public Result_div() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDiv1() {
        return div1;
    }

    public void setDiv1(String div1) {
        this.div1 = div1;
    }

    public String getDiv2() {
        return div2;
    }

    public void setDiv2(String div2) {
        this.div2 = div2;
    }

    public String getDiv3() {
        return div3;
    }

    public void setDiv3(String div3) {
        this.div3 = div3;
    }

    @Override
    public String toString() {
        return "Result_div{" +
                "id=" + id +
                ", div1='" + div1 + '\'' +
                ", div2='" + div2 + '\'' +
                ", div3='" + div3 + '\'' +
                '}';
    }
}
