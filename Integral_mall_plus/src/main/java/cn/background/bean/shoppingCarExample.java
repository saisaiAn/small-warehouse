package cn.background.bean;

import java.util.ArrayList;
import java.util.List;

public class shoppingCarExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public shoppingCarExample() {
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

        public Criteria andCarnoIsNull() {
            addCriterion("carNo is null");
            return (Criteria) this;
        }

        public Criteria andCarnoIsNotNull() {
            addCriterion("carNo is not null");
            return (Criteria) this;
        }

        public Criteria andCarnoEqualTo(Integer value) {
            addCriterion("carNo =", value, "carno");
            return (Criteria) this;
        }

        public Criteria andCarnoNotEqualTo(Integer value) {
            addCriterion("carNo <>", value, "carno");
            return (Criteria) this;
        }

        public Criteria andCarnoGreaterThan(Integer value) {
            addCriterion("carNo >", value, "carno");
            return (Criteria) this;
        }

        public Criteria andCarnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("carNo >=", value, "carno");
            return (Criteria) this;
        }

        public Criteria andCarnoLessThan(Integer value) {
            addCriterion("carNo <", value, "carno");
            return (Criteria) this;
        }

        public Criteria andCarnoLessThanOrEqualTo(Integer value) {
            addCriterion("carNo <=", value, "carno");
            return (Criteria) this;
        }

        public Criteria andCarnoIn(List<Integer> values) {
            addCriterion("carNo in", values, "carno");
            return (Criteria) this;
        }

        public Criteria andCarnoNotIn(List<Integer> values) {
            addCriterion("carNo not in", values, "carno");
            return (Criteria) this;
        }

        public Criteria andCarnoBetween(Integer value1, Integer value2) {
            addCriterion("carNo between", value1, value2, "carno");
            return (Criteria) this;
        }

        public Criteria andCarnoNotBetween(Integer value1, Integer value2) {
            addCriterion("carNo not between", value1, value2, "carno");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoIsNull() {
            addCriterion("shoppingEmpNo is null");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoIsNotNull() {
            addCriterion("shoppingEmpNo is not null");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoEqualTo(Integer value) {
            addCriterion("shoppingEmpNo =", value, "shoppingempno");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoNotEqualTo(Integer value) {
            addCriterion("shoppingEmpNo <>", value, "shoppingempno");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoGreaterThan(Integer value) {
            addCriterion("shoppingEmpNo >", value, "shoppingempno");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("shoppingEmpNo >=", value, "shoppingempno");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoLessThan(Integer value) {
            addCriterion("shoppingEmpNo <", value, "shoppingempno");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoLessThanOrEqualTo(Integer value) {
            addCriterion("shoppingEmpNo <=", value, "shoppingempno");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoIn(List<Integer> values) {
            addCriterion("shoppingEmpNo in", values, "shoppingempno");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoNotIn(List<Integer> values) {
            addCriterion("shoppingEmpNo not in", values, "shoppingempno");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoBetween(Integer value1, Integer value2) {
            addCriterion("shoppingEmpNo between", value1, value2, "shoppingempno");
            return (Criteria) this;
        }

        public Criteria andShoppingempnoNotBetween(Integer value1, Integer value2) {
            addCriterion("shoppingEmpNo not between", value1, value2, "shoppingempno");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoIsNull() {
            addCriterion("shoppingCommodityNo is null");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoIsNotNull() {
            addCriterion("shoppingCommodityNo is not null");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoEqualTo(Integer value) {
            addCriterion("shoppingCommodityNo =", value, "shoppingcommodityno");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoNotEqualTo(Integer value) {
            addCriterion("shoppingCommodityNo <>", value, "shoppingcommodityno");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoGreaterThan(Integer value) {
            addCriterion("shoppingCommodityNo >", value, "shoppingcommodityno");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoGreaterThanOrEqualTo(Integer value) {
            addCriterion("shoppingCommodityNo >=", value, "shoppingcommodityno");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoLessThan(Integer value) {
            addCriterion("shoppingCommodityNo <", value, "shoppingcommodityno");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoLessThanOrEqualTo(Integer value) {
            addCriterion("shoppingCommodityNo <=", value, "shoppingcommodityno");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoIn(List<Integer> values) {
            addCriterion("shoppingCommodityNo in", values, "shoppingcommodityno");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoNotIn(List<Integer> values) {
            addCriterion("shoppingCommodityNo not in", values, "shoppingcommodityno");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoBetween(Integer value1, Integer value2) {
            addCriterion("shoppingCommodityNo between", value1, value2, "shoppingcommodityno");
            return (Criteria) this;
        }

        public Criteria andShoppingcommoditynoNotBetween(Integer value1, Integer value2) {
            addCriterion("shoppingCommodityNo not between", value1, value2, "shoppingcommodityno");
            return (Criteria) this;
        }

        public Criteria andCommoditysumIsNull() {
            addCriterion("commoditySum is null");
            return (Criteria) this;
        }

        public Criteria andCommoditysumIsNotNull() {
            addCriterion("commoditySum is not null");
            return (Criteria) this;
        }

        public Criteria andCommoditysumEqualTo(Integer value) {
            addCriterion("commoditySum =", value, "commoditysum");
            return (Criteria) this;
        }

        public Criteria andCommoditysumNotEqualTo(Integer value) {
            addCriterion("commoditySum <>", value, "commoditysum");
            return (Criteria) this;
        }

        public Criteria andCommoditysumGreaterThan(Integer value) {
            addCriterion("commoditySum >", value, "commoditysum");
            return (Criteria) this;
        }

        public Criteria andCommoditysumGreaterThanOrEqualTo(Integer value) {
            addCriterion("commoditySum >=", value, "commoditysum");
            return (Criteria) this;
        }

        public Criteria andCommoditysumLessThan(Integer value) {
            addCriterion("commoditySum <", value, "commoditysum");
            return (Criteria) this;
        }

        public Criteria andCommoditysumLessThanOrEqualTo(Integer value) {
            addCriterion("commoditySum <=", value, "commoditysum");
            return (Criteria) this;
        }

        public Criteria andCommoditysumIn(List<Integer> values) {
            addCriterion("commoditySum in", values, "commoditysum");
            return (Criteria) this;
        }

        public Criteria andCommoditysumNotIn(List<Integer> values) {
            addCriterion("commoditySum not in", values, "commoditysum");
            return (Criteria) this;
        }

        public Criteria andCommoditysumBetween(Integer value1, Integer value2) {
            addCriterion("commoditySum between", value1, value2, "commoditysum");
            return (Criteria) this;
        }

        public Criteria andCommoditysumNotBetween(Integer value1, Integer value2) {
            addCriterion("commoditySum not between", value1, value2, "commoditysum");
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