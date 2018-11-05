package cn.dao;


import cn.bean.IntegralAudit;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IntegralAuditMapper {
    public int addIntegralAuditMapper(IntegralAudit integralAudit);

    public int bgAddzdyJfApply(IntegralAudit integralAudit);

    public List<IntegralAudit> findAllIntegralAudit();

    public int updIntegralauditAuditType(Map<Object,Object> map);

    public List<IntegralAudit> findAllIntegralAuditByDeptNo(@Param("deptno") Integer deptno);
}