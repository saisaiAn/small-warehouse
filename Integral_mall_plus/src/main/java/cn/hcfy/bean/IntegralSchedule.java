package cn.hcfy.bean;

import java.util.Date;

public class IntegralSchedule {
    private Integer intergralscheduleno;

    private Integer empno;

    private String intergralchange;

    private Integer changeint;

    private Date changedate;

    private Integer integralno;

    private Integer reviewer;

    private Integer integraltypeno;

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