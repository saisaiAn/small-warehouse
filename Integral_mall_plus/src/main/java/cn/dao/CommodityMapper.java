package cn.dao;

import cn.bean.Commodity;

import java.util.List;

public interface CommodityMapper {
    public List<Commodity> selectAllCommodity();
}