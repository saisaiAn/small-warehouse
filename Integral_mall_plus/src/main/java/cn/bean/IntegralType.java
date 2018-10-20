package cn.bean;
//积分类型表
public class IntegralType {
    private Integer integraltypeno;

    private String integraltypename;

    public Integer getIntegraltypeno() {
        return integraltypeno;
    }

    public void setIntegraltypeno(Integer integraltypeno) {
        this.integraltypeno = integraltypeno;
    }

    public String getIntegraltypename() {
        return integraltypename;
    }

    public void setIntegraltypename(String integraltypename) {
        this.integraltypename = integraltypename == null ? null : integraltypename.trim();
    }
}