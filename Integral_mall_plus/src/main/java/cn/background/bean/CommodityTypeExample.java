package cn.background.bean;

import java.util.ArrayList;
import java.util.List;

public class CommodityTypeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CommodityTypeExample() {
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

        public Criteria andCommoditytypenameIsNull() {
            addCriterion("CommodityTypeName is null");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameIsNotNull() {
            addCriterion("CommodityTypeName is not null");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameEqualTo(String value) {
            addCriterion("CommodityTypeName =", value, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameNotEqualTo(String value) {
            addCriterion("CommodityTypeName <>", value, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameGreaterThan(String value) {
            addCriterion("CommodityTypeName >", value, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameGreaterThanOrEqualTo(String value) {
            addCriterion("CommodityTypeName >=", value, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameLessThan(String value) {
            addCriterion("CommodityTypeName <", value, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameLessThanOrEqualTo(String value) {
            addCriterion("CommodityTypeName <=", value, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameLike(String value) {
            addCriterion("CommodityTypeName like", value, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameNotLike(String value) {
            addCriterion("CommodityTypeName not like", value, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameIn(List<String> values) {
            addCriterion("CommodityTypeName in", values, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameNotIn(List<String> values) {
            addCriterion("CommodityTypeName not in", values, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameBetween(String value1, String value2) {
            addCriterion("CommodityTypeName between", value1, value2, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andCommoditytypenameNotBetween(String value1, String value2) {
            addCriterion("CommodityTypeName not between", value1, value2, "commoditytypename");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeIsNull() {
            addCriterion("SuperCommodityType is null");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeIsNotNull() {
            addCriterion("SuperCommodityType is not null");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeEqualTo(Integer value) {
            addCriterion("SuperCommodityType =", value, "supercommoditytype");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeNotEqualTo(Integer value) {
            addCriterion("SuperCommodityType <>", value, "supercommoditytype");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeGreaterThan(Integer value) {
            addCriterion("SuperCommodityType >", value, "supercommoditytype");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("SuperCommodityType >=", value, "supercommoditytype");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeLessThan(Integer value) {
            addCriterion("SuperCommodityType <", value, "supercommoditytype");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeLessThanOrEqualTo(Integer value) {
            addCriterion("SuperCommodityType <=", value, "supercommoditytype");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeIn(List<Integer> values) {
            addCriterion("SuperCommodityType in", values, "supercommoditytype");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeNotIn(List<Integer> values) {
            addCriterion("SuperCommodityType not in", values, "supercommoditytype");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeBetween(Integer value1, Integer value2) {
            addCriterion("SuperCommodityType between", value1, value2, "supercommoditytype");
            return (Criteria) this;
        }

        public Criteria andSupercommoditytypeNotBetween(Integer value1, Integer value2) {
            addCriterion("SuperCommodityType not between", value1, value2, "supercommoditytype");
            return (Criteria) this;
        }

        public Criteria andCommodityrankIsNull() {
            addCriterion("CommodityRank is null");
            return (Criteria) this;
        }

        public Criteria andCommodityrankIsNotNull() {
            addCriterion("CommodityRank is not null");
            return (Criteria) this;
        }

        public Criteria andCommodityrankEqualTo(Integer value) {
            addCriterion("CommodityRank =", value, "commodityrank");
            return (Criteria) this;
        }

        public Criteria andCommodityrankNotEqualTo(Integer value) {
            addCriterion("CommodityRank <>", value, "commodityrank");
            return (Criteria) this;
        }

        public Criteria andCommodityrankGreaterThan(Integer value) {
            addCriterion("CommodityRank >", value, "commodityrank");
            return (Criteria) this;
        }

        public Criteria andCommodityrankGreaterThanOrEqualTo(Integer value) {
            addCriterion("CommodityRank >=", value, "commodityrank");
            return (Criteria) this;
        }

        public Criteria andCommodityrankLessThan(Integer value) {
            addCriterion("CommodityRank <", value, "commodityrank");
            return (Criteria) this;
        }

        public Criteria andCommodityrankLessThanOrEqualTo(Integer value) {
            addCriterion("CommodityRank <=", value, "commodityrank");
            return (Criteria) this;
        }

        public Criteria andCommodityrankIn(List<Integer> values) {
            addCriterion("CommodityRank in", values, "commodityrank");
            return (Criteria) this;
        }

        public Criteria andCommodityrankNotIn(List<Integer> values) {
            addCriterion("CommodityRank not in", values, "commodityrank");
            return (Criteria) this;
        }

        public Criteria andCommodityrankBetween(Integer value1, Integer value2) {
            addCriterion("CommodityRank between", value1, value2, "commodityrank");
            return (Criteria) this;
        }

        public Criteria andCommodityrankNotBetween(Integer value1, Integer value2) {
            addCriterion("CommodityRank not between", value1, value2, "commodityrank");
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