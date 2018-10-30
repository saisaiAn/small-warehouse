package cn.dao;


import cn.bean.Commodity;
import cn.bean.Imager;

import java.util.List;

public interface ImagerMapper {
    public List<Imager> selectAllImager();

    int addImg(Imager imager);
}