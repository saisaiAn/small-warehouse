package cn.background.bean;

import java.util.ArrayList;
import java.util.List;

public class ImagerExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ImagerExample() {
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

        public Criteria andImagerurlIsNull() {
            addCriterion("imagerUrl is null");
            return (Criteria) this;
        }

        public Criteria andImagerurlIsNotNull() {
            addCriterion("imagerUrl is not null");
            return (Criteria) this;
        }

        public Criteria andImagerurlEqualTo(String value) {
            addCriterion("imagerUrl =", value, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlNotEqualTo(String value) {
            addCriterion("imagerUrl <>", value, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlGreaterThan(String value) {
            addCriterion("imagerUrl >", value, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlGreaterThanOrEqualTo(String value) {
            addCriterion("imagerUrl >=", value, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlLessThan(String value) {
            addCriterion("imagerUrl <", value, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlLessThanOrEqualTo(String value) {
            addCriterion("imagerUrl <=", value, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlLike(String value) {
            addCriterion("imagerUrl like", value, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlNotLike(String value) {
            addCriterion("imagerUrl not like", value, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlIn(List<String> values) {
            addCriterion("imagerUrl in", values, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlNotIn(List<String> values) {
            addCriterion("imagerUrl not in", values, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlBetween(String value1, String value2) {
            addCriterion("imagerUrl between", value1, value2, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImagerurlNotBetween(String value1, String value2) {
            addCriterion("imagerUrl not between", value1, value2, "imagerurl");
            return (Criteria) this;
        }

        public Criteria andImageclassificationIsNull() {
            addCriterion("Imageclassification is null");
            return (Criteria) this;
        }

        public Criteria andImageclassificationIsNotNull() {
            addCriterion("Imageclassification is not null");
            return (Criteria) this;
        }

        public Criteria andImageclassificationEqualTo(String value) {
            addCriterion("Imageclassification =", value, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationNotEqualTo(String value) {
            addCriterion("Imageclassification <>", value, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationGreaterThan(String value) {
            addCriterion("Imageclassification >", value, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationGreaterThanOrEqualTo(String value) {
            addCriterion("Imageclassification >=", value, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationLessThan(String value) {
            addCriterion("Imageclassification <", value, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationLessThanOrEqualTo(String value) {
            addCriterion("Imageclassification <=", value, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationLike(String value) {
            addCriterion("Imageclassification like", value, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationNotLike(String value) {
            addCriterion("Imageclassification not like", value, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationIn(List<String> values) {
            addCriterion("Imageclassification in", values, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationNotIn(List<String> values) {
            addCriterion("Imageclassification not in", values, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationBetween(String value1, String value2) {
            addCriterion("Imageclassification between", value1, value2, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImageclassificationNotBetween(String value1, String value2) {
            addCriterion("Imageclassification not between", value1, value2, "imageclassification");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionIsNull() {
            addCriterion("ImagerDescription is null");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionIsNotNull() {
            addCriterion("ImagerDescription is not null");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionEqualTo(String value) {
            addCriterion("ImagerDescription =", value, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionNotEqualTo(String value) {
            addCriterion("ImagerDescription <>", value, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionGreaterThan(String value) {
            addCriterion("ImagerDescription >", value, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("ImagerDescription >=", value, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionLessThan(String value) {
            addCriterion("ImagerDescription <", value, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionLessThanOrEqualTo(String value) {
            addCriterion("ImagerDescription <=", value, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionLike(String value) {
            addCriterion("ImagerDescription like", value, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionNotLike(String value) {
            addCriterion("ImagerDescription not like", value, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionIn(List<String> values) {
            addCriterion("ImagerDescription in", values, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionNotIn(List<String> values) {
            addCriterion("ImagerDescription not in", values, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionBetween(String value1, String value2) {
            addCriterion("ImagerDescription between", value1, value2, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImagerdescriptionNotBetween(String value1, String value2) {
            addCriterion("ImagerDescription not between", value1, value2, "imagerdescription");
            return (Criteria) this;
        }

        public Criteria andImageridIsNull() {
            addCriterion("ImagerId is null");
            return (Criteria) this;
        }

        public Criteria andImageridIsNotNull() {
            addCriterion("ImagerId is not null");
            return (Criteria) this;
        }

        public Criteria andImageridEqualTo(Integer value) {
            addCriterion("ImagerId =", value, "imagerid");
            return (Criteria) this;
        }

        public Criteria andImageridNotEqualTo(Integer value) {
            addCriterion("ImagerId <>", value, "imagerid");
            return (Criteria) this;
        }

        public Criteria andImageridGreaterThan(Integer value) {
            addCriterion("ImagerId >", value, "imagerid");
            return (Criteria) this;
        }

        public Criteria andImageridGreaterThanOrEqualTo(Integer value) {
            addCriterion("ImagerId >=", value, "imagerid");
            return (Criteria) this;
        }

        public Criteria andImageridLessThan(Integer value) {
            addCriterion("ImagerId <", value, "imagerid");
            return (Criteria) this;
        }

        public Criteria andImageridLessThanOrEqualTo(Integer value) {
            addCriterion("ImagerId <=", value, "imagerid");
            return (Criteria) this;
        }

        public Criteria andImageridIn(List<Integer> values) {
            addCriterion("ImagerId in", values, "imagerid");
            return (Criteria) this;
        }

        public Criteria andImageridNotIn(List<Integer> values) {
            addCriterion("ImagerId not in", values, "imagerid");
            return (Criteria) this;
        }

        public Criteria andImageridBetween(Integer value1, Integer value2) {
            addCriterion("ImagerId between", value1, value2, "imagerid");
            return (Criteria) this;
        }

        public Criteria andImageridNotBetween(Integer value1, Integer value2) {
            addCriterion("ImagerId not between", value1, value2, "imagerid");
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