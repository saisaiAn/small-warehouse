package cn.background.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class IntegralExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public IntegralExample() {
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

        public Criteria andIntergralnoIsNull() {
            addCriterion("IntergralNo is null");
            return (Criteria) this;
        }

        public Criteria andIntergralnoIsNotNull() {
            addCriterion("IntergralNo is not null");
            return (Criteria) this;
        }

        public Criteria andIntergralnoEqualTo(Integer value) {
            addCriterion("IntergralNo =", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoNotEqualTo(Integer value) {
            addCriterion("IntergralNo <>", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoGreaterThan(Integer value) {
            addCriterion("IntergralNo >", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("IntergralNo >=", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoLessThan(Integer value) {
            addCriterion("IntergralNo <", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoLessThanOrEqualTo(Integer value) {
            addCriterion("IntergralNo <=", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoIn(List<Integer> values) {
            addCriterion("IntergralNo in", values, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoNotIn(List<Integer> values) {
            addCriterion("IntergralNo not in", values, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoBetween(Integer value1, Integer value2) {
            addCriterion("IntergralNo between", value1, value2, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoNotBetween(Integer value1, Integer value2) {
            addCriterion("IntergralNo not between", value1, value2, "intergralno");
            return (Criteria) this;
        }

        public Criteria andTotalintegralIsNull() {
            addCriterion("TotalIntegral is null");
            return (Criteria) this;
        }

        public Criteria andTotalintegralIsNotNull() {
            addCriterion("TotalIntegral is not null");
            return (Criteria) this;
        }

        public Criteria andTotalintegralEqualTo(Integer value) {
            addCriterion("TotalIntegral =", value, "totalintegral");
            return (Criteria) this;
        }

        public Criteria andTotalintegralNotEqualTo(Integer value) {
            addCriterion("TotalIntegral <>", value, "totalintegral");
            return (Criteria) this;
        }

        public Criteria andTotalintegralGreaterThan(Integer value) {
            addCriterion("TotalIntegral >", value, "totalintegral");
            return (Criteria) this;
        }

        public Criteria andTotalintegralGreaterThanOrEqualTo(Integer value) {
            addCriterion("TotalIntegral >=", value, "totalintegral");
            return (Criteria) this;
        }

        public Criteria andTotalintegralLessThan(Integer value) {
            addCriterion("TotalIntegral <", value, "totalintegral");
            return (Criteria) this;
        }

        public Criteria andTotalintegralLessThanOrEqualTo(Integer value) {
            addCriterion("TotalIntegral <=", value, "totalintegral");
            return (Criteria) this;
        }

        public Criteria andTotalintegralIn(List<Integer> values) {
            addCriterion("TotalIntegral in", values, "totalintegral");
            return (Criteria) this;
        }

        public Criteria andTotalintegralNotIn(List<Integer> values) {
            addCriterion("TotalIntegral not in", values, "totalintegral");
            return (Criteria) this;
        }

        public Criteria andTotalintegralBetween(Integer value1, Integer value2) {
            addCriterion("TotalIntegral between", value1, value2, "totalintegral");
            return (Criteria) this;
        }

        public Criteria andTotalintegralNotBetween(Integer value1, Integer value2) {
            addCriterion("TotalIntegral not between", value1, value2, "totalintegral");
            return (Criteria) this;
        }

        public Criteria andHaveintegralIsNull() {
            addCriterion("HaveIntegral is null");
            return (Criteria) this;
        }

        public Criteria andHaveintegralIsNotNull() {
            addCriterion("HaveIntegral is not null");
            return (Criteria) this;
        }

        public Criteria andHaveintegralEqualTo(Integer value) {
            addCriterion("HaveIntegral =", value, "haveintegral");
            return (Criteria) this;
        }

        public Criteria andHaveintegralNotEqualTo(Integer value) {
            addCriterion("HaveIntegral <>", value, "haveintegral");
            return (Criteria) this;
        }

        public Criteria andHaveintegralGreaterThan(Integer value) {
            addCriterion("HaveIntegral >", value, "haveintegral");
            return (Criteria) this;
        }

        public Criteria andHaveintegralGreaterThanOrEqualTo(Integer value) {
            addCriterion("HaveIntegral >=", value, "haveintegral");
            return (Criteria) this;
        }

        public Criteria andHaveintegralLessThan(Integer value) {
            addCriterion("HaveIntegral <", value, "haveintegral");
            return (Criteria) this;
        }

        public Criteria andHaveintegralLessThanOrEqualTo(Integer value) {
            addCriterion("HaveIntegral <=", value, "haveintegral");
            return (Criteria) this;
        }

        public Criteria andHaveintegralIn(List<Integer> values) {
            addCriterion("HaveIntegral in", values, "haveintegral");
            return (Criteria) this;
        }

        public Criteria andHaveintegralNotIn(List<Integer> values) {
            addCriterion("HaveIntegral not in", values, "haveintegral");
            return (Criteria) this;
        }

        public Criteria andHaveintegralBetween(Integer value1, Integer value2) {
            addCriterion("HaveIntegral between", value1, value2, "haveintegral");
            return (Criteria) this;
        }

        public Criteria andHaveintegralNotBetween(Integer value1, Integer value2) {
            addCriterion("HaveIntegral not between", value1, value2, "haveintegral");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsIsNull() {
            addCriterion("RemainingPoints is null");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsIsNotNull() {
            addCriterion("RemainingPoints is not null");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsEqualTo(Integer value) {
            addCriterion("RemainingPoints =", value, "remainingpoints");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsNotEqualTo(Integer value) {
            addCriterion("RemainingPoints <>", value, "remainingpoints");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsGreaterThan(Integer value) {
            addCriterion("RemainingPoints >", value, "remainingpoints");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsGreaterThanOrEqualTo(Integer value) {
            addCriterion("RemainingPoints >=", value, "remainingpoints");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsLessThan(Integer value) {
            addCriterion("RemainingPoints <", value, "remainingpoints");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsLessThanOrEqualTo(Integer value) {
            addCriterion("RemainingPoints <=", value, "remainingpoints");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsIn(List<Integer> values) {
            addCriterion("RemainingPoints in", values, "remainingpoints");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsNotIn(List<Integer> values) {
            addCriterion("RemainingPoints not in", values, "remainingpoints");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsBetween(Integer value1, Integer value2) {
            addCriterion("RemainingPoints between", value1, value2, "remainingpoints");
            return (Criteria) this;
        }

        public Criteria andRemainingpointsNotBetween(Integer value1, Integer value2) {
            addCriterion("RemainingPoints not between", value1, value2, "remainingpoints");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeIsNull() {
            addCriterion("LastChangeTime is null");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeIsNotNull() {
            addCriterion("LastChangeTime is not null");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeEqualTo(Date value) {
            addCriterion("LastChangeTime =", value, "lastchangetime");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeNotEqualTo(Date value) {
            addCriterion("LastChangeTime <>", value, "lastchangetime");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeGreaterThan(Date value) {
            addCriterion("LastChangeTime >", value, "lastchangetime");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("LastChangeTime >=", value, "lastchangetime");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeLessThan(Date value) {
            addCriterion("LastChangeTime <", value, "lastchangetime");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeLessThanOrEqualTo(Date value) {
            addCriterion("LastChangeTime <=", value, "lastchangetime");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeIn(List<Date> values) {
            addCriterion("LastChangeTime in", values, "lastchangetime");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeNotIn(List<Date> values) {
            addCriterion("LastChangeTime not in", values, "lastchangetime");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeBetween(Date value1, Date value2) {
            addCriterion("LastChangeTime between", value1, value2, "lastchangetime");
            return (Criteria) this;
        }

        public Criteria andLastchangetimeNotBetween(Date value1, Date value2) {
            addCriterion("LastChangeTime not between", value1, value2, "lastchangetime");
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