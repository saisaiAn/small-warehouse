package cn.bean;

public class IntegralAudit {
    private Integer integralauditno;

    private Integer empno;

    private String intergralchange;

    private Integer changeint;

    private Integer reviewer;

    private Integer integraltypeno;

    private Integer audittype;

    private String auditopinion;

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
}