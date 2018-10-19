package cn.bean;

import java.util.ArrayList;
import java.util.List;

public class CommodityExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CommodityExample() {
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

        public Criteria andCommoditynoIsNull() {
            addCriterion("CommodityNo is null");
            return (Criteria) this;
        }

        public Criteria andCommoditynoIsNotNull() {
            addCriterion("CommodityNo is not null");
            return (Criteria) this;
        }

        public Criteria andCommoditynoEqualTo(Integer value) {
            addCriterion("CommodityNo =", value, "commodityno");
            return (Criteria) this;
        }

        public Criteria andCommoditynoNotEqualTo(Integer value) {
            addCriterion("CommodityNo <>", value, "commodityno");
            return (Criteria) this;
        }

        public Criteria andCommoditynoGreaterThan(Integer value) {
            addCriterion("CommodityNo >", value, "commodityno");
            return (Criteria) this;
        }

        public Criteria andCommoditynoGreaterThanOrEqualTo(Integer value) {
            addCriterion("CommodityNo >=", value, "commodityno");
            return (Criteria) this;
        }

        public Criteria andCommoditynoLessThan(Integer value) {
            addCriterion("CommodityNo <", value, "commodityno");
            return (Criteria) this;
        }

        public Criteria andCommoditynoLessThanOrEqualTo(Integer value) {
            addCriterion("CommodityNo <=", value, "commodityno");
            return (Criteria) this;
        }

        public Criteria andCommoditynoIn(List<Integer> values) {
            addCriterion("CommodityNo in", values, "commodityno");
            return (Criteria) this;
        }

        public Criteria andCommoditynoNotIn(List<Integer> values) {
            addCriterion("CommodityNo not in", values, "commodityno");
            return (Criteria) this;
        }

        public Criteria andCommoditynoBetween(Integer value1, Integer value2) {
            addCriterion("CommodityNo between", value1, value2, "commodityno");
            return (Criteria) this;
        }

        public Criteria andCommoditynoNotBetween(Integer value1, Integer value2) {
            addCriterion("CommodityNo not between", value1, value2, "commodityno");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(Double value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(Double value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(Double value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(Double value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(Double value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<Double> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<Double> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(Double value1, Double value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(Double value1, Double value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andNeedintegralIsNull() {
            addCriterion("NeedIntegral is null");
            return (Criteria) this;
        }

        public Criteria andNeedintegralIsNotNull() {
            addCriterion("NeedIntegral is not null");
            return (Criteria) this;
        }

        public Criteria andNeedintegralEqualTo(Integer value) {
            addCriterion("NeedIntegral =", value, "needintegral");
            return (Criteria) this;
        }

        public Criteria andNeedintegralNotEqualTo(Integer value) {
            addCriterion("NeedIntegral <>", value, "needintegral");
            return (Criteria) this;
        }

        public Criteria andNeedintegralGreaterThan(Integer value) {
            addCriterion("NeedIntegral >", value, "needintegral");
            return (Criteria) this;
        }

        public Criteria andNeedintegralGreaterThanOrEqualTo(Integer value) {
            addCriterion("NeedIntegral >=", value, "needintegral");
            return (Criteria) this;
        }

        public Criteria andNeedintegralLessThan(Integer value) {
            addCriterion("NeedIntegral <", value, "needintegral");
            return (Criteria) this;
        }

        public Criteria andNeedintegralLessThanOrEqualTo(Integer value) {
            addCriterion("NeedIntegral <=", value, "needintegral");
            return (Criteria) this;
        }

        public Criteria andNeedintegralIn(List<Integer> values) {
            addCriterion("NeedIntegral in", values, "needintegral");
            return (Criteria) this;
        }

        public Criteria andNeedintegralNotIn(List<Integer> values) {
            addCriterion("NeedIntegral not in", values, "needintegral");
            return (Criteria) this;
        }

        public Criteria andNeedintegralBetween(Integer value1, Integer value2) {
            addCriterion("NeedIntegral between", value1, value2, "needintegral");
            return (Criteria) this;
        }

        public Criteria andNeedintegralNotBetween(Integer value1, Integer value2) {
            addCriterion("NeedIntegral not between", value1, value2, "needintegral");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleIsNull() {
            addCriterion("Commoditytitle is null");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleIsNotNull() {
            addCriterion("Commoditytitle is not null");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleEqualTo(String value) {
            addCriterion("Commoditytitle =", value, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleNotEqualTo(String value) {
            addCriterion("Commoditytitle <>", value, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleGreaterThan(String value) {
            addCriterion("Commoditytitle >", value, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleGreaterThanOrEqualTo(String value) {
            addCriterion("Commoditytitle >=", value, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleLessThan(String value) {
            addCriterion("Commoditytitle <", value, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleLessThanOrEqualTo(String value) {
            addCriterion("Commoditytitle <=", value, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleLike(String value) {
            addCriterion("Commoditytitle like", value, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleNotLike(String value) {
            addCriterion("Commoditytitle not like", value, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleIn(List<String> values) {
            addCriterion("Commoditytitle in", values, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleNotIn(List<String> values) {
            addCriterion("Commoditytitle not in", values, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleBetween(String value1, String value2) {
            addCriterion("Commoditytitle between", value1, value2, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditytitleNotBetween(String value1, String value2) {
            addCriterion("Commoditytitle not between", value1, value2, "commoditytitle");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsIsNull() {
            addCriterion("Commoditydetails is null");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsIsNotNull() {
            addCriterion("Commoditydetails is not null");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsEqualTo(String value) {
            addCriterion("Commoditydetails =", value, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsNotEqualTo(String value) {
            addCriterion("Commoditydetails <>", value, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsGreaterThan(String value) {
            addCriterion("Commoditydetails >", value, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsGreaterThanOrEqualTo(String value) {
            addCriterion("Commoditydetails >=", value, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsLessThan(String value) {
            addCriterion("Commoditydetails <", value, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsLessThanOrEqualTo(String value) {
            addCriterion("Commoditydetails <=", value, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsLike(String value) {
            addCriterion("Commoditydetails like", value, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsNotLike(String value) {
            addCriterion("Commoditydetails not like", value, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsIn(List<String> values) {
            addCriterion("Commoditydetails in", values, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsNotIn(List<String> values) {
            addCriterion("Commoditydetails not in", values, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsBetween(String value1, String value2) {
            addCriterion("Commoditydetails between", value1, value2, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommoditydetailsNotBetween(String value1, String value2) {
            addCriterion("Commoditydetails not between", value1, value2, "commoditydetails");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryIsNull() {
            addCriterion("Commodityinventory is null");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryIsNotNull() {
            addCriterion("Commodityinventory is not null");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryEqualTo(Integer value) {
            addCriterion("Commodityinventory =", value, "commodityinventory");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryNotEqualTo(Integer value) {
            addCriterion("Commodityinventory <>", value, "commodityinventory");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryGreaterThan(Integer value) {
            addCriterion("Commodityinventory >", value, "commodityinventory");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryGreaterThanOrEqualTo(Integer value) {
            addCriterion("Commodityinventory >=", value, "commodityinventory");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryLessThan(Integer value) {
            addCriterion("Commodityinventory <", value, "commodityinventory");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryLessThanOrEqualTo(Integer value) {
            addCriterion("Commodityinventory <=", value, "commodityinventory");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryIn(List<Integer> values) {
            addCriterion("Commodityinventory in", values, "commodityinventory");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryNotIn(List<Integer> values) {
            addCriterion("Commodityinventory not in", values, "commodityinventory");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryBetween(Integer value1, Integer value2) {
            addCriterion("Commodityinventory between", value1, value2, "commodityinventory");
            return (Criteria) this;
        }

        public Criteria andCommodityinventoryNotBetween(Integer value1, Integer value2) {
            addCriterion("Commodityinventory not between", value1, value2, "commodityinventory");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoIsNull() {
            addCriterion("CommodityTypeNo is null");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoIsNotNull() {
            addCriterion("CommodityTypeNo is not null");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoEqualTo(Integer value) {
            addCriterion("CommodityTypeNo =", value, "commoditytypeno");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoNotEqualTo(Integer value) {
            addCriterion("CommodityTypeNo <>", value, "commoditytypeno");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoGreaterThan(Integer value) {
            addCriterion("CommodityTypeNo >", value, "commoditytypeno");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoGreaterThanOrEqualTo(Integer value) {
            addCriterion("CommodityTypeNo >=", value, "commoditytypeno");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoLessThan(Integer value) {
            addCriterion("CommodityTypeNo <", value, "commoditytypeno");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoLessThanOrEqualTo(Integer value) {
            addCriterion("CommodityTypeNo <=", value, "commoditytypeno");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoIn(List<Integer> values) {
            addCriterion("CommodityTypeNo in", values, "commoditytypeno");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoNotIn(List<Integer> values) {
            addCriterion("CommodityTypeNo not in", values, "commoditytypeno");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoBetween(Integer value1, Integer value2) {
            addCriterion("CommodityTypeNo between", value1, value2, "commoditytypeno");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenoNotBetween(Integer value1, Integer value2) {
            addCriterion("CommodityTypeNo not between", value1, value2, "commoditytypeno");
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