package cn.background.bean;

import java.util.Date;

public class Emp {
    private Integer empno;

    private String empname;

    private String empsex;

    private String idcard;

    private Integer departmentno;

    private Date positivedates;

    private String empphone;

    private Integer intergralno;

    private Integer position;

    private Integer emptype;

    public Integer getEmpno() {
        return empno;
    }

    public void setEmpno(Integer empno) {
        this.empno = empno;
    }

    public String getEmpname() {
        return empname;
    }

    public void setEmpname(String empname) {
        this.empname = empname == null ? null : empname.trim();
    }

    public String getEmpsex() {
        return empsex;
    }

    public void setEmpsex(String empsex) {
        this.empsex = empsex == null ? null : empsex.trim();
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard == null ? null : idcard.trim();
    }

    public Integer getDepartmentno() {
        return departmentno;
    }

    public void setDepartmentno(Integer departmentno) {
        this.departmentno = departmentno;
    }

    public Date getPositivedates() {
        return positivedates;
    }

    public void setPositivedates(Date positivedates) {
        this.positivedates = positivedates;
    }

    public String getEmpphone() {
        return empphone;
    }

    public void setEmpphone(String empphone) {
        this.empphone = empphone == null ? null : empphone.trim();
    }

    public Integer getIntergralno() {
        return intergralno;
    }

    public void setIntergralno(Integer intergralno) {
        this.intergralno = intergralno;
    }

    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    public Integer getEmptype() {
        return emptype;
    }

    public void setEmptype(Integer emptype) {
        this.emptype = emptype;
    }
}