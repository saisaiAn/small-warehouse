package cn.background.bean;

import java.util.ArrayList;
import java.util.List;

public class IntegralAuditExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public IntegralAuditExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIntegralauditnoIsNull() {
            addCriterion("IntegralAuditNo is null");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoIsNotNull() {
            addCriterion("IntegralAuditNo is not null");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoEqualTo(Integer value) {
            addCriterion("IntegralAuditNo =", value, "integralauditno");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoNotEqualTo(Integer value) {
            addCriterion("IntegralAuditNo <>", value, "integralauditno");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoGreaterThan(Integer value) {
            addCriterion("IntegralAuditNo >", value, "integralauditno");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("IntegralAuditNo >=", value, "integralauditno");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoLessThan(Integer value) {
            addCriterion("IntegralAuditNo <", value, "integralauditno");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoLessThanOrEqualTo(Integer value) {
            addCriterion("IntegralAuditNo <=", value, "integralauditno");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoIn(List<Integer> values) {
            addCriterion("IntegralAuditNo in", values, "integralauditno");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoNotIn(List<Integer> values) {
            addCriterion("IntegralAuditNo not in", values, "integralauditno");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoBetween(Integer value1, Integer value2) {
            addCriterion("IntegralAuditNo between", value1, value2, "integralauditno");
            return (Criteria) this;
        }

        public Criteria andIntegralauditnoNotBetween(Integer value1, Integer value2) {
            addCriterion("IntegralAuditNo not between", value1, value2, "integralauditno");
            return (Criteria) this;
        }

        public Criteria andEmpnoIsNull() {
            addCriterion("empNo is null");
            return (Criteria) this;
        }

        public Criteria andEmpnoIsNotNull() {
            addCriterion("empNo is not null");
            return (Criteria) this;
        }

        public Criteria andEmpnoEqualTo(Integer value) {
            addCriterion("empNo =", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoNotEqualTo(Integer value) {
            addCriterion("empNo <>", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoGreaterThan(Integer value) {
            addCriterion("empNo >", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("empNo >=", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoLessThan(Integer value) {
            addCriterion("empNo <", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoLessThanOrEqualTo(Integer value) {
            addCriterion("empNo <=", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoIn(List<Integer> values) {
            addCriterion("empNo in", values, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoNotIn(List<Integer> values) {
            addCriterion("empNo not in", values, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoBetween(Integer value1, Integer value2) {
            addCriterion("empNo between", value1, value2, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoNotBetween(Integer value1, Integer value2) {
            addCriterion("empNo not between", value1, value2, "empno");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeIsNull() {
            addCriterion("intergralChange is null");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeIsNotNull() {
            addCriterion("intergralChange is not null");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeEqualTo(String value) {
            addCriterion("intergralChange =", value, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeNotEqualTo(String value) {
            addCriterion("intergralChange <>", value, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeGreaterThan(String value) {
            addCriterion("intergralChange >", value, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeGreaterThanOrEqualTo(String value) {
            addCriterion("intergralChange >=", value, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeLessThan(String value) {
            addCriterion("intergralChange <", value, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeLessThanOrEqualTo(String value) {
            addCriterion("intergralChange <=", value, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeLike(String value) {
            addCriterion("intergralChange like", value, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeNotLike(String value) {
            addCriterion("intergralChange not like", value, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeIn(List<String> values) {
            addCriterion("intergralChange in", values, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeNotIn(List<String> values) {
            addCriterion("intergralChange not in", values, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeBetween(String value1, String value2) {
            addCriterion("intergralChange between", value1, value2, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andIntergralchangeNotBetween(String value1, String value2) {
            addCriterion("intergralChange not between", value1, value2, "intergralchange");
            return (Criteria) this;
        }

        public Criteria andChangeintIsNull() {
            addCriterion("Changeint is null");
            return (Criteria) this;
        }

        public Criteria andChangeintIsNotNull() {
            addCriterion("Changeint is not null");
            return (Criteria) this;
        }

        public Criteria andChangeintEqualTo(Integer value) {
            addCriterion("Changeint =", value, "changeint");
            return (Criteria) this;
        }

        public Criteria andChangeintNotEqualTo(Integer value) {
            addCriterion("Changeint <>", value, "changeint");
            return (Criteria) this;
        }

        public Criteria andChangeintGreaterThan(Integer value) {
            addCriterion("Changeint >", value, "changeint");
            return (Criteria) this;
        }

        public Criteria andChangeintGreaterThanOrEqualTo(Integer value) {
            addCriterion("Changeint >=", value, "changeint");
            return (Criteria) this;
        }

        public Criteria andChangeintLessThan(Integer value) {
            addCriterion("Changeint <", value, "changeint");
            return (Criteria) this;
        }

        public Criteria andChangeintLessThanOrEqualTo(Integer value) {
            addCriterion("Changeint <=", value, "changeint");
            return (Criteria) this;
        }

        public Criteria andChangeintIn(List<Integer> values) {
            addCriterion("Changeint in", values, "changeint");
            return (Criteria) this;
        }

        public Criteria andChangeintNotIn(List<Integer> values) {
            addCriterion("Changeint not in", values, "changeint");
            return (Criteria) this;
        }

        public Criteria andChangeintBetween(Integer value1, Integer value2) {
            addCriterion("Changeint between", value1, value2, "changeint");
            return (Criteria) this;
        }

        public Criteria andChangeintNotBetween(Integer value1, Integer value2) {
            addCriterion("Changeint not between", value1, value2, "changeint");
            return (Criteria) this;
        }

        public Criteria andReviewerIsNull() {
            addCriterion("reviewer is null");
            return (Criteria) this;
        }

        public Criteria andReviewerIsNotNull() {
            addCriterion("reviewer is not null");
            return (Criteria) this;
        }

        public Criteria andReviewerEqualTo(Integer value) {
            addCriterion("reviewer =", value, "reviewer");
            return (Criteria) this;
        }

        public Criteria andReviewerNotEqualTo(Integer value) {
            addCriterion("reviewer <>", value, "reviewer");
            return (Criteria) this;
        }

        public Criteria andReviewerGreaterThan(Integer value) {
            addCriterion("reviewer >", value, "reviewer");
            return (Criteria) this;
        }

        public Criteria andReviewerGreaterThanOrEqualTo(Integer value) {
            addCriterion("reviewer >=", value, "reviewer");
            return (Criteria) this;
        }

        public Criteria andReviewerLessThan(Integer value) {
            addCriterion("reviewer <", value, "reviewer");
            return (Criteria) this;
        }

        public Criteria andReviewerLessThanOrEqualTo(Integer value) {
            addCriterion("reviewer <=", value, "reviewer");
            return (Criteria) this;
        }

        public Criteria andReviewerIn(List<Integer> values) {
            addCriterion("reviewer in", values, "reviewer");
            return (Criteria) this;
        }

        public Criteria andReviewerNotIn(List<Integer> values) {
            addCriterion("reviewer not in", values, "reviewer");
            return (Criteria) this;
        }

        public Criteria andReviewerBetween(Integer value1, Integer value2) {
            addCriterion("reviewer between", value1, value2, "reviewer");
            return (Criteria) this;
        }

        public Criteria andReviewerNotBetween(Integer value1, Integer value2) {
            addCriterion("reviewer not between", value1, value2, "reviewer");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoIsNull() {
            addCriterion("IntegralTypeNo is null");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoIsNotNull() {
            addCriterion("IntegralTypeNo is not null");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoEqualTo(Integer value) {
            addCriterion("IntegralTypeNo =", value, "integraltypeno");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoNotEqualTo(Integer value) {
            addCriterion("IntegralTypeNo <>", value, "integraltypeno");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoGreaterThan(Integer value) {
            addCriterion("IntegralTypeNo >", value, "integraltypeno");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoGreaterThanOrEqualTo(Integer value) {
            addCriterion("IntegralTypeNo >=", value, "integraltypeno");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoLessThan(Integer value) {
            addCriterion("IntegralTypeNo <", value, "integraltypeno");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoLessThanOrEqualTo(Integer value) {
            addCriterion("IntegralTypeNo <=", value, "integraltypeno");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoIn(List<Integer> values) {
            addCriterion("IntegralTypeNo in", values, "integraltypeno");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoNotIn(List<Integer> values) {
            addCriterion("IntegralTypeNo not in", values, "integraltypeno");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoBetween(Integer value1, Integer value2) {
            addCriterion("IntegralTypeNo between", value1, value2, "integraltypeno");
            return (Criteria) this;
        }

        public Criteria andIntegraltypenoNotBetween(Integer value1, Integer value2) {
            addCriterion("IntegralTypeNo not between", value1, value2, "integraltypeno");
            return (Criteria) this;
        }

        public Criteria andAudittypeIsNull() {
            addCriterion("AuditType is null");
            return (Criteria) this;
        }

        public Criteria andAudittypeIsNotNull() {
            addCriterion("AuditType is not null");
            return (Criteria) this;
        }

        public Criteria andAudittypeEqualTo(Integer value) {
            addCriterion("AuditType =", value, "audittype");
            return (Criteria) this;
        }

        public Criteria andAudittypeNotEqualTo(Integer value) {
            addCriterion("AuditType <>", value, "audittype");
            return (Criteria) this;
        }

        public Criteria andAudittypeGreaterThan(Integer value) {
            addCriterion("AuditType >", value, "audittype");
            return (Criteria) this;
        }

        public Criteria andAudittypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("AuditType >=", value, "audittype");
            return (Criteria) this;
        }

        public Criteria andAudittypeLessThan(Integer value) {
            addCriterion("AuditType <", value, "audittype");
            return (Criteria) this;
        }

        public Criteria andAudittypeLessThanOrEqualTo(Integer value) {
            addCriterion("AuditType <=", value, "audittype");
            return (Criteria) this;
        }

        public Criteria andAudittypeIn(List<Integer> values) {
            addCriterion("AuditType in", values, "audittype");
            return (Criteria) this;
        }

        public Criteria andAudittypeNotIn(List<Integer> values) {
            addCriterion("AuditType not in", values, "audittype");
            return (Criteria) this;
        }

        public Criteria andAudittypeBetween(Integer value1, Integer value2) {
            addCriterion("AuditType between", value1, value2, "audittype");
            return (Criteria) this;
        }

        public Criteria andAudittypeNotBetween(Integer value1, Integer value2) {
            addCriterion("AuditType not between", value1, value2, "audittype");
            return (Criteria) this;
        }

        public Criteria andAuditopinionIsNull() {
            addCriterion("AuditOpinion is null");
            return (Criteria) this;
        }

        public Criteria andAuditopinionIsNotNull() {
            addCriterion("AuditOpinion is not null");
            return (Criteria) this;
        }

        public Criteria andAuditopinionEqualTo(String value) {
            addCriterion("AuditOpinion =", value, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionNotEqualTo(String value) {
            addCriterion("AuditOpinion <>", value, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionGreaterThan(String value) {
            addCriterion("AuditOpinion >", value, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionGreaterThanOrEqualTo(String value) {
            addCriterion("AuditOpinion >=", value, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionLessThan(String value) {
            addCriterion("AuditOpinion <", value, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionLessThanOrEqualTo(String value) {
            addCriterion("AuditOpinion <=", value, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionLike(String value) {
            addCriterion("AuditOpinion like", value, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionNotLike(String value) {
            addCriterion("AuditOpinion not like", value, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionIn(List<String> values) {
            addCriterion("AuditOpinion in", values, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionNotIn(List<String> values) {
            addCriterion("AuditOpinion not in", values, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionBetween(String value1, String value2) {
            addCriterion("AuditOpinion between", value1, value2, "auditopinion");
            return (Criteria) this;
        }

        public Criteria andAuditopinionNotBetween(String value1, String value2) {
            addCriterion("AuditOpinion not between", value1, value2, "auditopinion");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}