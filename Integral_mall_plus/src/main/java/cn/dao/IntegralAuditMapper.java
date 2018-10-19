package cn.dao;

import cn.bean.IntegralAudit;
import cn.bean.IntegralAuditExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IntegralAuditMapper {
    long countByExample(IntegralAuditExample example);

    int deleteByExample(IntegralAuditExample example);

    int deleteByPrimaryKey(Integer integralauditno);

    int insert(IntegralAudit record);

    int insertSelective(IntegralAudit record);

    List<IntegralAudit> selectByExample(IntegralAuditExample example);

    IntegralAudit selectByPrimaryKey(Integer integralauditno);

    int updateByExampleSelective(@Param("record") IntegralAudit record, @Param("example") IntegralAuditExample example);

    int updateByExample(@Param("record") IntegralAudit record, @Param("example") IntegralAuditExample example);

    int updateByPrimaryKeySelective(IntegralAudit record);

    int updateByPrimaryKey(IntegralAudit record);
}