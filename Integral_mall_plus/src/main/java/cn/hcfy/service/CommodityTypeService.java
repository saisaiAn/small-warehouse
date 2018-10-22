package cn.hcfy.service;

import cn.bean.CommodityType;
import cn.dao.CommodityTypeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommodityTypeService {
    @Autowired
    CommodityTypeMapper commodityTypeMapper;

    public List<CommodityType> selectAllCommodityType(){
        return commodityTypeMapper.selectAllCommodityType();
    };
}
