package cn.hcfy.bean;

import java.util.Date;

public class Orders {
    private Integer orderno;

    private String orderintegral;

    private Integer ordercommodityno;

    private Date ordertime;

    private Integer orderstatus;

    private Integer empno;

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