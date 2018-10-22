package cn.hcfy.service;

import cn.bean.Imager;
import cn.dao.ImagerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImagerService {

    @Autowired
    ImagerMapper imagerMapper;

    public List<Imager> selectAllImager(){
        return imagerMapper.selectAllImager();
    }
}
