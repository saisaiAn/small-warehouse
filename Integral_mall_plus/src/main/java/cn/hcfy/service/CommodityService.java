package cn.hcfy.service;

import cn.bean.Commodity;
import cn.dao.CommodityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommodityService {
    @Autowired
    CommodityMapper commodityMapper;
    public List<Commodity> selectAllCommodity(){
        return commodityMapper.selectAllCommodity();
    }
}
