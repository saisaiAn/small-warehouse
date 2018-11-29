package cn.Before.service;

import cn.bean.CommodityReview;
import cn.dao.CommodityMapper;
import cn.dao.CommodityReviewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommodityReviewService {
    @Autowired
    CommodityReviewMapper commodityReviewMapper;
    public int addCommodityReview(CommodityReview commodityReview){
        return commodityReviewMapper.addCommodityReview(commodityReview);
    }
    public List<CommodityReview> selectCommodityReviewById(CommodityReview commodityReview){
        return commodityReviewMapper.selectCommodityReviewById(commodityReview);
    };
}

