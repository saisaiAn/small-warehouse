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

    void updatePro(Commodity commodity);//修改商品信息

    int bg_undercarriage_product(Integer proid);//下架商品

    int bg_grounding_product(Integer proid);//上架商品

    List<Commodity> likeProductByProName(String proName);

    List<Commodity> commodityByType(@Param("commodityTypeNo") Integer commodityTypeNo);

    //下单商品库存修改
    int updateCommoditySum(Commodity commodity);
}