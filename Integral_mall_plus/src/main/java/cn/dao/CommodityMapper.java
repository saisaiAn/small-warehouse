package cn.dao;

import cn.bean.Commodity;
import cn.bean.CommodityType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommodityMapper {
    public List<Commodity> selectAllCommodity();
    public Commodity selectCommodityById(Commodity commodity);
    int findCountCommodity();

    public List<CommodityType> findProByType(@Param("idType") Integer idType);

    int bgAddProduct(Commodity commodity);//后台添加商品

}