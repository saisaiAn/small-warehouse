package cn.bean;
//商品表
public class Commodity {
    private Integer commodityno;

    private Double price;

    private Integer needintegral;
    private String commoditytitle;

    private String commoditydetails;

    private Integer commodityinventory;

    private Integer commoditytypeno;

    private CommodityType commodityTypeId;//商品分类id

    private Integer commoditytype;//商品是否上架

    public CommodityType getCommodityTypeId() {
        return commodityTypeId;
    }

    public void setCommodityTypeId(CommodityType commodityTypeId) {
        this.commodityTypeId = commodityTypeId;
    }

    public Integer getCommoditytype() {
        return commoditytype;
    }

    public void setCommoditytype(Integer commoditytype) {
        this.commoditytype = commoditytype;
    }

    public Integer getCommodityno() {
        return commodityno;
    }

    public void setCommodityno(Integer commodityno) {
        this.commodityno = commodityno;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getNeedintegral() {
        return needintegral;
    }

    public void setNeedintegral(Integer needintegral) {
        this.needintegral = needintegral;
    }

    public String getCommoditytitle() {
        return commoditytitle;
    }

    public void setCommoditytitle(String commoditytitle) {
        this.commoditytitle = commoditytitle == null ? null : commoditytitle.trim();
    }

    public String getCommoditydetails() {
        return commoditydetails;
    }

    public void setCommoditydetails(String commoditydetails) {
        this.commoditydetails = commoditydetails == null ? null : commoditydetails.trim();
    }

    public Integer getCommodityinventory() {
        return commodityinventory;
    }

    public void setCommodityinventory(Integer commodityinventory) {
        this.commodityinventory = commodityinventory;
    }

    public Integer getCommoditytypeno() {
        return commoditytypeno;
    }

    public void setCommoditytypeno(Integer commoditytypeno) {
        this.commoditytypeno = commoditytypeno;
    }
}