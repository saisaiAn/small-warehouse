package cn.bean;

//部门表
public class Department {
    private Integer depano;

    private String depaname;

    private Integer parentdepa;

    private Department department;

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Integer getDepano() {
        return depano;
    }

    public void setDepano(Integer depano) {
        this.depano = depano;
    }

    public String getDepaname() {
        return depaname;
    }

    public void setDepaname(String depaname) {
        this.depaname = depaname == null ? null : depaname.trim();
    }

    public Integer getParentdepa() {
        return parentdepa;
    }

    public void setParentdepa(Integer parentdepa) {
        this.parentdepa = parentdepa;
    }
}