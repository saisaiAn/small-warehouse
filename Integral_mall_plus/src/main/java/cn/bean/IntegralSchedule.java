package cn.bean;

import java.util.Date;
//积分明细表
public class IntegralSchedule {
    private Integer intergralscheduleno;

    private Integer empno;
    private Emp empId; //外键员工表

    private String intergralchange;

    private Integer changeint;

    private Date changedate;

    private Integer integralno;
    private Integral integralId; //外键积分表

    private Integer reviewer;

    private Integer integraltypeno;
    private IntegralType integralTypeId;//外键积分所属类型表

    public Emp getEmpId() {
        return empId;
    }

    public void setEmpId(Emp empId) {
        this.empId = empId;
    }

    public Integral getIntegralId() {
        return integralId;
    }

    public void setIntegralId(Integral integralId) {
        this.integralId = integralId;
    }

    public IntegralType getIntegralTypeId() {
        return integralTypeId;
    }

    public void setIntegralTypeId(IntegralType integralTypeId) {
        this.integralTypeId = integralTypeId;
    }

    public Integer getIntergralscheduleno() {
        return intergralscheduleno;
    }

    public void setIntergralscheduleno(Integer intergralscheduleno) {
        this.intergralscheduleno = intergralscheduleno;
    }

    public Integer getEmpno() {
        return empno;
    }

    public void setEmpno(Integer empno) {
        this.empno = empno;
    }

    public String getIntergralchange() {
        return intergralchange;
    }

    public void setIntergralchange(String intergralchange) {
        this.intergralchange = intergralchange == null ? null : intergralchange.trim();
    }

    public Integer getChangeint() {
        return changeint;
    }

    public void setChangeint(Integer changeint) {
        this.changeint = changeint;
    }

    public Date getChangedate() {
        return changedate;
    }

    public void setChangedate(Date changedate) {
        this.changedate = changedate;
    }

    public Integer getIntegralno() {
        return integralno;
    }

    public void setIntegralno(Integer integralno) {
        this.integralno = integralno;
    }

    public Integer getReviewer() {
        return reviewer;
    }

    public void setReviewer(Integer reviewer) {
        this.reviewer = reviewer;
    }

    public Integer getIntegraltypeno() {
        return integraltypeno;
    }

    public void setIntegraltypeno(Integer integraltypeno) {
        this.integraltypeno = integraltypeno;
    }
}