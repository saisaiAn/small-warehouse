package cn.bean;

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

    private String password;

    private Department department;

    private Integral integral;

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Integral getIntegral() {
        return integral;
    }

    public void setIntegral(Integral integral) {
        this.integral = integral;
    }

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Emp(Integer empno, String empname, String empsex, String idcard, Integer departmentno, Date positivedates, String empphone, Integer intergralno, Integer position, Integer emptype, String password, Department department, Integral integral) {
        this.empno = empno;
        this.empname = empname;
        this.empsex = empsex;
        this.idcard = idcard;
        this.departmentno = departmentno;
        this.positivedates = positivedates;
        this.empphone = empphone;
        this.intergralno = intergralno;
        this.position = position;
        this.emptype = emptype;
        this.password = password;
        this.department = department;
        this.integral = integral;
    }

    @Override
    public String toString() {
        return "Emp{" +
                "empno=" + empno +
                ", empname='" + empname + '\'' +
                ", empsex='" + empsex + '\'' +
                ", idcard='" + idcard + '\'' +
                ", departmentno=" + departmentno +
                ", positivedates=" + positivedates +
                ", empphone='" + empphone + '\'' +
                ", intergralno=" + intergralno +
                ", position=" + position +
                ", emptype=" + emptype +
                ", password='" + password + '\'' +
                ", department=" + department +
                ", integral=" + integral +
                '}';
    }
    public Emp() {
    }
}