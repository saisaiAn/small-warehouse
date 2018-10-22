package cn.bean;
//商品分类表
public class CommodityType {
    private Integer commoditytypeno;

    private String commoditytypename;

    private Integer supercommoditytype;

    private CommodityType supercommoditytypeno;

    private Integer commodityrank;

    public CommodityType getSupercommoditytypeno() {
        return supercommoditytypeno;
    }

    public void setSupercommoditytypeno(CommodityType supercommoditytypeno) {
        this.supercommoditytypeno = supercommoditytypeno;
    }

    public Integer getCommoditytypeno() {
        return commoditytypeno;
    }

    public void setCommoditytypeno(Integer commoditytypeno) {
        this.commoditytypeno = commoditytypeno;
    }

    public String getCommoditytypename() {
        return commoditytypename;
    }

    public void setCommoditytypename(String commoditytypename) {
        this.commoditytypename = commoditytypename == null ? null : commoditytypename.trim();
    }

    public Integer getSupercommoditytype() {
        return supercommoditytype;
    }

    public void setSupercommoditytype(Integer supercommoditytype) {
        this.supercommoditytype = supercommoditytype;
    }

    public Integer getCommodityrank() {
        return commodityrank;
    }

    public void setCommodityrank(Integer commodityrank) {
        this.commodityrank = commodityrank;
    }
}