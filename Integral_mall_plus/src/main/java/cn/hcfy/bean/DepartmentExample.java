package cn.hcfy.bean;

import java.util.ArrayList;
import java.util.List;

public class DepartmentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DepartmentExample() {
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

        public Criteria andDepanoIsNull() {
            addCriterion("depaNo is null");
            return (Criteria) this;
        }

        public Criteria andDepanoIsNotNull() {
            addCriterion("depaNo is not null");
            return (Criteria) this;
        }

        public Criteria andDepanoEqualTo(Integer value) {
            addCriterion("depaNo =", value, "depano");
            return (Criteria) this;
        }

        public Criteria andDepanoNotEqualTo(Integer value) {
            addCriterion("depaNo <>", value, "depano");
            return (Criteria) this;
        }

        public Criteria andDepanoGreaterThan(Integer value) {
            addCriterion("depaNo >", value, "depano");
            return (Criteria) this;
        }

        public Criteria andDepanoGreaterThanOrEqualTo(Integer value) {
            addCriterion("depaNo >=", value, "depano");
            return (Criteria) this;
        }

        public Criteria andDepanoLessThan(Integer value) {
            addCriterion("depaNo <", value, "depano");
            return (Criteria) this;
        }

        public Criteria andDepanoLessThanOrEqualTo(Integer value) {
            addCriterion("depaNo <=", value, "depano");
            return (Criteria) this;
        }

        public Criteria andDepanoIn(List<Integer> values) {
            addCriterion("depaNo in", values, "depano");
            return (Criteria) this;
        }

        public Criteria andDepanoNotIn(List<Integer> values) {
            addCriterion("depaNo not in", values, "depano");
            return (Criteria) this;
        }

        public Criteria andDepanoBetween(Integer value1, Integer value2) {
            addCriterion("depaNo between", value1, value2, "depano");
            return (Criteria) this;
        }

        public Criteria andDepanoNotBetween(Integer value1, Integer value2) {
            addCriterion("depaNo not between", value1, value2, "depano");
            return (Criteria) this;
        }

        public Criteria andDepanameIsNull() {
            addCriterion("depaName is null");
            return (Criteria) this;
        }

        public Criteria andDepanameIsNotNull() {
            addCriterion("depaName is not null");
            return (Criteria) this;
        }

        public Criteria andDepanameEqualTo(String value) {
            addCriterion("depaName =", value, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameNotEqualTo(String value) {
            addCriterion("depaName <>", value, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameGreaterThan(String value) {
            addCriterion("depaName >", value, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameGreaterThanOrEqualTo(String value) {
            addCriterion("depaName >=", value, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameLessThan(String value) {
            addCriterion("depaName <", value, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameLessThanOrEqualTo(String value) {
            addCriterion("depaName <=", value, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameLike(String value) {
            addCriterion("depaName like", value, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameNotLike(String value) {
            addCriterion("depaName not like", value, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameIn(List<String> values) {
            addCriterion("depaName in", values, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameNotIn(List<String> values) {
            addCriterion("depaName not in", values, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameBetween(String value1, String value2) {
            addCriterion("depaName between", value1, value2, "depaname");
            return (Criteria) this;
        }

        public Criteria andDepanameNotBetween(String value1, String value2) {
            addCriterion("depaName not between", value1, value2, "depaname");
            return (Criteria) this;
        }

        public Criteria andParentdepaIsNull() {
            addCriterion("parentDepa is null");
            return (Criteria) this;
        }

        public Criteria andParentdepaIsNotNull() {
            addCriterion("parentDepa is not null");
            return (Criteria) this;
        }

        public Criteria andParentdepaEqualTo(Integer value) {
            addCriterion("parentDepa =", value, "parentdepa");
            return (Criteria) this;
        }

        public Criteria andParentdepaNotEqualTo(Integer value) {
            addCriterion("parentDepa <>", value, "parentdepa");
            return (Criteria) this;
        }

        public Criteria andParentdepaGreaterThan(Integer value) {
            addCriterion("parentDepa >", value, "parentdepa");
            return (Criteria) this;
        }

        public Criteria andParentdepaGreaterThanOrEqualTo(Integer value) {
            addCriterion("parentDepa >=", value, "parentdepa");
            return (Criteria) this;
        }

        public Criteria andParentdepaLessThan(Integer value) {
            addCriterion("parentDepa <", value, "parentdepa");
            return (Criteria) this;
        }

        public Criteria andParentdepaLessThanOrEqualTo(Integer value) {
            addCriterion("parentDepa <=", value, "parentdepa");
            return (Criteria) this;
        }

        public Criteria andParentdepaIn(List<Integer> values) {
            addCriterion("parentDepa in", values, "parentdepa");
            return (Criteria) this;
        }

        public Criteria andParentdepaNotIn(List<Integer> values) {
            addCriterion("parentDepa not in", values, "parentdepa");
            return (Criteria) this;
        }

        public Criteria andParentdepaBetween(Integer value1, Integer value2) {
            addCriterion("parentDepa between", value1, value2, "parentdepa");
            return (Criteria) this;
        }

        public Criteria andParentdepaNotBetween(Integer value1, Integer value2) {
            addCriterion("parentDepa not between", value1, value2, "parentdepa");
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