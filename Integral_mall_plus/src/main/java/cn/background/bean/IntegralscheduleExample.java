package cn.background.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class IntegralscheduleExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public IntegralscheduleExample() {
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

        public Criteria andIntergralschedulenoIsNull() {
            addCriterion("intergralScheduleNo is null");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoIsNotNull() {
            addCriterion("intergralScheduleNo is not null");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoEqualTo(Integer value) {
            addCriterion("intergralScheduleNo =", value, "intergralscheduleno");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoNotEqualTo(Integer value) {
            addCriterion("intergralScheduleNo <>", value, "intergralscheduleno");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoGreaterThan(Integer value) {
            addCriterion("intergralScheduleNo >", value, "intergralscheduleno");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoGreaterThanOrEqualTo(Integer value) {
            addCriterion("intergralScheduleNo >=", value, "intergralscheduleno");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoLessThan(Integer value) {
            addCriterion("intergralScheduleNo <", value, "intergralscheduleno");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoLessThanOrEqualTo(Integer value) {
            addCriterion("intergralScheduleNo <=", value, "intergralscheduleno");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoIn(List<Integer> values) {
            addCriterion("intergralScheduleNo in", values, "intergralscheduleno");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoNotIn(List<Integer> values) {
            addCriterion("intergralScheduleNo not in", values, "intergralscheduleno");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoBetween(Integer value1, Integer value2) {
            addCriterion("intergralScheduleNo between", value1, value2, "intergralscheduleno");
            return (Criteria) this;
        }

        public Criteria andIntergralschedulenoNotBetween(Integer value1, Integer value2) {
            addCriterion("intergralScheduleNo not between", value1, value2, "intergralscheduleno");
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

        public Criteria andChangedateIsNull() {
            addCriterion("ChangeDate is null");
            return (Criteria) this;
        }

        public Criteria andChangedateIsNotNull() {
            addCriterion("ChangeDate is not null");
            return (Criteria) this;
        }

        public Criteria andChangedateEqualTo(Date value) {
            addCriterion("ChangeDate =", value, "changedate");
            return (Criteria) this;
        }

        public Criteria andChangedateNotEqualTo(Date value) {
            addCriterion("ChangeDate <>", value, "changedate");
            return (Criteria) this;
        }

        public Criteria andChangedateGreaterThan(Date value) {
            addCriterion("ChangeDate >", value, "changedate");
            return (Criteria) this;
        }

        public Criteria andChangedateGreaterThanOrEqualTo(Date value) {
            addCriterion("ChangeDate >=", value, "changedate");
            return (Criteria) this;
        }

        public Criteria andChangedateLessThan(Date value) {
            addCriterion("ChangeDate <", value, "changedate");
            return (Criteria) this;
        }

        public Criteria andChangedateLessThanOrEqualTo(Date value) {
            addCriterion("ChangeDate <=", value, "changedate");
            return (Criteria) this;
        }

        public Criteria andChangedateIn(List<Date> values) {
            addCriterion("ChangeDate in", values, "changedate");
            return (Criteria) this;
        }

        public Criteria andChangedateNotIn(List<Date> values) {
            addCriterion("ChangeDate not in", values, "changedate");
            return (Criteria) this;
        }

        public Criteria andChangedateBetween(Date value1, Date value2) {
            addCriterion("ChangeDate between", value1, value2, "changedate");
            return (Criteria) this;
        }

        public Criteria andChangedateNotBetween(Date value1, Date value2) {
            addCriterion("ChangeDate not between", value1, value2, "changedate");
            return (Criteria) this;
        }

        public Criteria andIntegralnoIsNull() {
            addCriterion("IntegralNo is null");
            return (Criteria) this;
        }

        public Criteria andIntegralnoIsNotNull() {
            addCriterion("IntegralNo is not null");
            return (Criteria) this;
        }

        public Criteria andIntegralnoEqualTo(Integer value) {
            addCriterion("IntegralNo =", value, "integralno");
            return (Criteria) this;
        }

        public Criteria andIntegralnoNotEqualTo(Integer value) {
            addCriterion("IntegralNo <>", value, "integralno");
            return (Criteria) this;
        }

        public Criteria andIntegralnoGreaterThan(Integer value) {
            addCriterion("IntegralNo >", value, "integralno");
            return (Criteria) this;
        }

        public Criteria andIntegralnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("IntegralNo >=", value, "integralno");
            return (Criteria) this;
        }

        public Criteria andIntegralnoLessThan(Integer value) {
            addCriterion("IntegralNo <", value, "integralno");
            return (Criteria) this;
        }

        public Criteria andIntegralnoLessThanOrEqualTo(Integer value) {
            addCriterion("IntegralNo <=", value, "integralno");
            return (Criteria) this;
        }

        public Criteria andIntegralnoIn(List<Integer> values) {
            addCriterion("IntegralNo in", values, "integralno");
            return (Criteria) this;
        }

        public Criteria andIntegralnoNotIn(List<Integer> values) {
            addCriterion("IntegralNo not in", values, "integralno");
            return (Criteria) this;
        }

        public Criteria andIntegralnoBetween(Integer value1, Integer value2) {
            addCriterion("IntegralNo between", value1, value2, "integralno");
            return (Criteria) this;
        }

        public Criteria andIntegralnoNotBetween(Integer value1, Integer value2) {
            addCriterion("IntegralNo not between", value1, value2, "integralno");
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