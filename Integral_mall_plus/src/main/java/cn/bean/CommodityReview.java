package cn.bean;

import java.util.Date;
//商品评论表
public class CommodityReview {
    private Integer commodityreviewno;

    private Integer commodityno;
    private Commodity commodityId;  //外键商品表

    private String reviewcontent;

    private Integer empno;
    private Emp empId;  //外键员工表

    private Date reviewtime;

    private Integer OrderNo;

    public Commodity getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(Commodity commodityId) {
        this.commodityId = commodityId;
    }

    public Emp getEmpId() {
        return empId;
    }

    public void setEmpId(Emp empId) {
        this.empId = empId;
    }

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

    public Integer getOrderNo() {
        return OrderNo;
    }

    public void setOrderNo(Integer orderNo) {
        OrderNo = orderNo;
    }
}