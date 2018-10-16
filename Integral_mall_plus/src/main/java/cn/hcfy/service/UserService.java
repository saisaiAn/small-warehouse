package cn.hcfy.service;

import cn.hcfy.bean.user;
import cn.hcfy.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserMapper umapper;

    public List<user> findAll(){
        return umapper.selectAll();
    }

}
