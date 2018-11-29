package cn.dao;


import cn.bean.CommodityReview;

import java.util.List;

public interface CommodityReviewMapper {
    int addCommodityReview(CommodityReview commodityReview);
    List<CommodityReview> selectCommodityReviewById(CommodityReview commodityReview);
}