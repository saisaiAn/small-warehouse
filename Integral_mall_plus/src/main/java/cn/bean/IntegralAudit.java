package cn.bean;
//积分审核表
public class IntegralAudit {
    private Integer integralauditno;

    private Integer empno;
    private Emp empId; //外键员工表

    private String intergralchange;

    private Integer changeint;

    private Integer reviewer;
    private Emp empReviewer; //外键员工表

    private Integer integraltypeno;
    private IntegralType integralTypeId; //外键积分所属类型表

    private Integer audittype;

    private String auditopinion;

    public Emp getEmpId() {
        return empId;
    }

    public void setEmpId(Emp empId) {
        this.empId = empId;
    }

    public IntegralType getIntegralTypeId() {
        return integralTypeId;
    }

    public void setIntegralTypeId(IntegralType integralTypeId) {
        this.integralTypeId = integralTypeId;
    }

    public Integer getIntegralauditno() {
        return integralauditno;
    }

    public void setIntegralauditno(Integer integralauditno) {
        this.integralauditno = integralauditno;
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

    public Integer getAudittype() {
        return audittype;
    }

    public void setAudittype(Integer audittype) {
        this.audittype = audittype;
    }

    public String getAuditopinion() {
        return auditopinion;
    }

    public void setAuditopinion(String auditopinion) {
        this.auditopinion = auditopinion == null ? null : auditopinion.trim();
    }

    public Emp getEmpReviewer() {
        return empReviewer;
    }

    public void setEmpReviewer(Emp empReviewer) {
        this.empReviewer = empReviewer;
    }
}