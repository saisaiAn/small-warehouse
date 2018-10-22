package cn.bean;
//购物车表
public class shoppingCar {
    private Integer carno;

    private Integer shoppingempno;
    private Emp empId; //外键用户表

    private Integer shoppingcommodityno;
    private Commodity commodityId; //外键商品表

    private Integer commoditysum;

    private String commodityNote;

    public Emp getEmpId() {
        return empId;
    }

    public void setEmpId(Emp empId) {
        this.empId = empId;
    }

    public Commodity getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(Commodity commodityId) {
        this.commodityId = commodityId;
    }

    public Integer getCarno() {
        return carno;
    }

    public void setCarno(Integer carno) {
        this.carno = carno;
    }

    public Integer getShoppingempno() {
        return shoppingempno;
    }

    public void setShoppingempno(Integer shoppingempno) {
        this.shoppingempno = shoppingempno;
    }

    public Integer getShoppingcommodityno() {
        return shoppingcommodityno;
    }

    public void setShoppingcommodityno(Integer shoppingcommodityno) {
        this.shoppingcommodityno = shoppingcommodityno;
    }

    public Integer getCommoditysum() {
        return commoditysum;
    }

    public void setCommoditysum(Integer commoditysum) {
        this.commoditysum = commoditysum;
    }

    public String getCommodityNote() {
        return commodityNote;
    }

    public void setCommodityNote(String commodityNote) {
        this.commodityNote = commodityNote;
    }
}