package cn.background.bgService;

import cn.bean.Emp;
import cn.bean.Imager;
import cn.dao.EmpMapper;
import cn.dao.ImagerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BgLoginService {
    @Autowired
    EmpMapper empMapper;

    @Autowired
    ImagerMapper imagerMapper;

    public Emp LoginByUsernameAndPassword(Emp emp){
        return empMapper.loginToIndexBefore(emp);
    }

    public List<Imager> findAllImg(){
       return   imagerMapper.selectAllImager();
    }
}
