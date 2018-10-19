package cn.hcfy.dao;

import cn.hcfy.bean.CommodityReview;
import cn.hcfy.bean.CommodityReviewExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CommodityReviewMapper {
    long countByExample(CommodityReviewExample example);

    int deleteByExample(CommodityReviewExample example);

    int deleteByPrimaryKey(Integer commodityreviewno);

    int insert(CommodityReview record);

    int insertSelective(CommodityReview record);

    List<CommodityReview> selectByExample(CommodityReviewExample example);

    CommodityReview selectByPrimaryKey(Integer commodityreviewno);

    int updateByExampleSelective(@Param("record") CommodityReview record, @Param("example") CommodityReviewExample example);

    int updateByExample(@Param("record") CommodityReview record, @Param("example") CommodityReviewExample example);

    int updateByPrimaryKeySelective(CommodityReview record);

    int updateByPrimaryKey(CommodityReview record);
}