package cn.bean;

import java.util.Date;
//订单表
public class Orders {
    private Integer orderno;

    private String orderintegral;

    private Integer ordercommodityno;
    private Commodity commodityId; //外键商品表

    private Date ordertime;

    private Integer orderstatus;

    private Integer empno;
    private Emp emp;

    public Commodity getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(Commodity commodityId) {
        this.commodityId = commodityId;
    }

    public Integer getOrderno() {
        return orderno;
    }

    public void setOrderno(Integer orderno) {
        this.orderno = orderno;
    }

    public String getOrderintegral() {
        return orderintegral;
    }

    public void setOrderintegral(String orderintegral) {
        this.orderintegral = orderintegral == null ? null : orderintegral.trim();
    }

    public Emp getEmp() {
        return emp;
    }

    public void setEmp(Emp emp) {
        this.emp = emp;
    }

    public Integer getOrdercommodityno() {
        return ordercommodityno;
    }

    public void setOrdercommodityno(Integer ordercommodityno) {
        this.ordercommodityno = ordercommodityno;
    }

    public Date getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    public Integer getOrderstatus() {
        return orderstatus;
    }

    public void setOrderstatus(Integer orderstatus) {
        this.orderstatus = orderstatus;
    }

    public Integer getEmpno() {
        return empno;
    }

    public void setEmpno(Integer empno) {
        this.empno = empno;
    }
}