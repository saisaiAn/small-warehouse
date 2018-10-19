package cn.hcfy.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CommodityReviewExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CommodityReviewExample() {
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

        public Criteria andCommodityreviewnoIsNull() {
            addCriterion("CommodityReviewNo is null");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoIsNotNull() {
            addCriterion("CommodityReviewNo is not null");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoEqualTo(Integer value) {
            addCriterion("CommodityReviewNo =", value, "commodityreviewno");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoNotEqualTo(Integer value) {
            addCriterion("CommodityReviewNo <>", value, "commodityreviewno");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoGreaterThan(Integer value) {
            addCriterion("CommodityReviewNo >", value, "commodityreviewno");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("CommodityReviewNo >=", value, "commodityreviewno");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoLessThan(Integer value) {
            addCriterion("CommodityReviewNo <", value, "commodityreviewno");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoLessThanOrEqualTo(Integer value) {
            addCriterion("CommodityReviewNo <=", value, "commodityreviewno");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoIn(List<Integer> values) {
            addCriterion("CommodityReviewNo in", values, "commodityreviewno");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoNotIn(List<Integer> values) {
            addCriterion("CommodityReviewNo not in", values, "commodityreviewno");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoBetween(Integer value1, Integer value2) {
            addCriterion("CommodityReviewNo between", value1, value2, "commodityreviewno");
            return (Criteria) this;
        }

        public Criteria andCommodityreviewnoNotBetween(Integer value1, Integer value2) {
            addCriterion("CommodityReviewNo not between", value1, value2, "commodityreviewno");
            return (Criteria) this;
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

        public Criteria andReviewcontentIsNull() {
            addCriterion("ReviewContent is null");
            return (Criteria) this;
        }

        public Criteria andReviewcontentIsNotNull() {
            addCriterion("ReviewContent is not null");
            return (Criteria) this;
        }

        public Criteria andReviewcontentEqualTo(String value) {
            addCriterion("ReviewContent =", value, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentNotEqualTo(String value) {
            addCriterion("ReviewContent <>", value, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentGreaterThan(String value) {
            addCriterion("ReviewContent >", value, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentGreaterThanOrEqualTo(String value) {
            addCriterion("ReviewContent >=", value, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentLessThan(String value) {
            addCriterion("ReviewContent <", value, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentLessThanOrEqualTo(String value) {
            addCriterion("ReviewContent <=", value, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentLike(String value) {
            addCriterion("ReviewContent like", value, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentNotLike(String value) {
            addCriterion("ReviewContent not like", value, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentIn(List<String> values) {
            addCriterion("ReviewContent in", values, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentNotIn(List<String> values) {
            addCriterion("ReviewContent not in", values, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentBetween(String value1, String value2) {
            addCriterion("ReviewContent between", value1, value2, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andReviewcontentNotBetween(String value1, String value2) {
            addCriterion("ReviewContent not between", value1, value2, "reviewcontent");
            return (Criteria) this;
        }

        public Criteria andEmpnoIsNull() {
            addCriterion("EmpNo is null");
            return (Criteria) this;
        }

        public Criteria andEmpnoIsNotNull() {
            addCriterion("EmpNo is not null");
            return (Criteria) this;
        }

        public Criteria andEmpnoEqualTo(Integer value) {
            addCriterion("EmpNo =", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoNotEqualTo(Integer value) {
            addCriterion("EmpNo <>", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoGreaterThan(Integer value) {
            addCriterion("EmpNo >", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("EmpNo >=", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoLessThan(Integer value) {
            addCriterion("EmpNo <", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoLessThanOrEqualTo(Integer value) {
            addCriterion("EmpNo <=", value, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoIn(List<Integer> values) {
            addCriterion("EmpNo in", values, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoNotIn(List<Integer> values) {
            addCriterion("EmpNo not in", values, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoBetween(Integer value1, Integer value2) {
            addCriterion("EmpNo between", value1, value2, "empno");
            return (Criteria) this;
        }

        public Criteria andEmpnoNotBetween(Integer value1, Integer value2) {
            addCriterion("EmpNo not between", value1, value2, "empno");
            return (Criteria) this;
        }

        public Criteria andReviewtimeIsNull() {
            addCriterion("ReviewTime is null");
            return (Criteria) this;
        }

        public Criteria andReviewtimeIsNotNull() {
            addCriterion("ReviewTime is not null");
            return (Criteria) this;
        }

        public Criteria andReviewtimeEqualTo(Date value) {
            addCriterion("ReviewTime =", value, "reviewtime");
            return (Criteria) this;
        }

        public Criteria andReviewtimeNotEqualTo(Date value) {
            addCriterion("ReviewTime <>", value, "reviewtime");
            return (Criteria) this;
        }

        public Criteria andReviewtimeGreaterThan(Date value) {
            addCriterion("ReviewTime >", value, "reviewtime");
            return (Criteria) this;
        }

        public Criteria andReviewtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("ReviewTime >=", value, "reviewtime");
            return (Criteria) this;
        }

        public Criteria andReviewtimeLessThan(Date value) {
            addCriterion("ReviewTime <", value, "reviewtime");
            return (Criteria) this;
        }

        public Criteria andReviewtimeLessThanOrEqualTo(Date value) {
            addCriterion("ReviewTime <=", value, "reviewtime");
            return (Criteria) this;
        }

        public Criteria andReviewtimeIn(List<Date> values) {
            addCriterion("ReviewTime in", values, "reviewtime");
            return (Criteria) this;
        }

        public Criteria andReviewtimeNotIn(List<Date> values) {
            addCriterion("ReviewTime not in", values, "reviewtime");
            return (Criteria) this;
        }

        public Criteria andReviewtimeBetween(Date value1, Date value2) {
            addCriterion("ReviewTime between", value1, value2, "reviewtime");
            return (Criteria) this;
        }

        public Criteria andReviewtimeNotBetween(Date value1, Date value2) {
            addCriterion("ReviewTime not between", value1, value2, "reviewtime");
            return (Criteria) this;
        }

        public Criteria andImagernoIsNull() {
            addCriterion("imagerNo is null");
            return (Criteria) this;
        }

        public Criteria andImagernoIsNotNull() {
            addCriterion("imagerNo is not null");
            return (Criteria) this;
        }

        public Criteria andImagernoEqualTo(Integer value) {
            addCriterion("imagerNo =", value, "imagerno");
            return (Criteria) this;
        }

        public Criteria andImagernoNotEqualTo(Integer value) {
            addCriterion("imagerNo <>", value, "imagerno");
            return (Criteria) this;
        }

        public Criteria andImagernoGreaterThan(Integer value) {
            addCriterion("imagerNo >", value, "imagerno");
            return (Criteria) this;
        }

        public Criteria andImagernoGreaterThanOrEqualTo(Integer value) {
            addCriterion("imagerNo >=", value, "imagerno");
            return (Criteria) this;
        }

        public Criteria andImagernoLessThan(Integer value) {
            addCriterion("imagerNo <", value, "imagerno");
            return (Criteria) this;
        }

        public Criteria andImagernoLessThanOrEqualTo(Integer value) {
            addCriterion("imagerNo <=", value, "imagerno");
            return (Criteria) this;
        }

        public Criteria andImagernoIn(List<Integer> values) {
            addCriterion("imagerNo in", values, "imagerno");
            return (Criteria) this;
        }

        public Criteria andImagernoNotIn(List<Integer> values) {
            addCriterion("imagerNo not in", values, "imagerno");
            return (Criteria) this;
        }

        public Criteria andImagernoBetween(Integer value1, Integer value2) {
            addCriterion("imagerNo between", value1, value2, "imagerno");
            return (Criteria) this;
        }

        public Criteria andImagernoNotBetween(Integer value1, Integer value2) {
            addCriterion("imagerNo not between", value1, value2, "imagerno");
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