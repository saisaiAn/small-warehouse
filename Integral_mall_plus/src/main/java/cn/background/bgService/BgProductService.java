package cn.background.bgService;

import cn.bean.Commodity;
import cn.bean.CommodityType;
import cn.bean.Imager;
import cn.dao.CommodityMapper;
import cn.dao.CommodityTypeMapper;
import cn.dao.ImagerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BgProductService {
    @Autowired
    CommodityMapper commodityMapper;
    @Autowired
    CommodityTypeMapper commodityTypeMapper;

    @Autowired
    ImagerMapper imagerMapper;

    public List<Commodity> findAllCommodity(){
        return commodityMapper.selectAllCommodity();
    }

    public int findCountCommodity(){
        return commodityMapper.findCountCommodity();
    }

    public List<CommodityType> findAllCommodityType(){//查询所有商品分类类型
        return commodityTypeMapper.selectAllCommodityType();
    }

    public List<CommodityType> findProByType(Integer idType){//根据类型查询商品
        return commodityMapper.findProByType(idType);
    }

    public int addPro(Commodity commodity){
        return commodityMapper.bgAddProduct(commodity);
    }

    public int addImg(Imager imager){
        return imagerMapper.addImg(imager);
    }
}
