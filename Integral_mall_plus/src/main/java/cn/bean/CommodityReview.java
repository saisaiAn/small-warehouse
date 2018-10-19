package cn.bean;

import java.util.Date;

public class CommodityReview {
    private Integer commodityreviewno;

    private Integer commodityno;

    private String reviewcontent;

    private Integer empno;

    private Date reviewtime;

    private Integer imagerno;

    public Integer getCommodityreviewno() {
        return commodityreviewno;
    }

    public void setCommodityreviewno(Integer commodityreviewno) {
        this.commodityreviewno = commodityreviewno;
    }

    public Integer getCommodityno() {
        return commodityno;
    }

    public void setCommodityno(Integer commodityno) {
        this.commodityno = commodityno;
    }

    public String getReviewcontent() {
        return reviewcontent;
    }

    public void setReviewcontent(String reviewcontent) {
        this.reviewcontent = reviewcontent == null ? null : reviewcontent.trim();
    }

    public Integer getEmpno() {
        return empno;
    }

    public void setEmpno(Integer empno) {
        this.empno = empno;
    }

    public Date getReviewtime() {
        return reviewtime;
    }

    public void setReviewtime(Date reviewtime) {
        this.reviewtime = reviewtime;
    }

    public Integer getImagerno() {
        return imagerno;
    }

    public void setImagerno(Integer imagerno) {
        this.imagerno = imagerno;
    }
}