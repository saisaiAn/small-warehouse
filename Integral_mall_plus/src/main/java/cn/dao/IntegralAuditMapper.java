package cn.dao;


import cn.bean.IntegralAudit;

import java.util.List;

public interface IntegralAuditMapper {
    public int addIntegralAuditMapper(IntegralAudit integralAudit);

    public int bgAddzdyJfApply(IntegralAudit integralAudit);

    public List<IntegralAudit> findAllIntegralAudit();
}