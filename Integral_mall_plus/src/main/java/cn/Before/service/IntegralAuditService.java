package cn.Before.service;

import cn.bean.IntegralAudit;
import cn.dao.IntegralAuditMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IntegralAuditService {

    @Autowired
    IntegralAuditMapper integralAuditMapper;

    public int addIntegralAuditMapper(IntegralAudit integralAudit){
        return integralAuditMapper.addIntegralAuditMapper(integralAudit);
    }
}
