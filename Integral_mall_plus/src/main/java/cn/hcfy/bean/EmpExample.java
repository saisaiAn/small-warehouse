package cn.hcfy.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EmpExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public EmpExample() {
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

        public Criteria andEmpnameIsNull() {
            addCriterion("EmpName is null");
            return (Criteria) this;
        }

        public Criteria andEmpnameIsNotNull() {
            addCriterion("EmpName is not null");
            return (Criteria) this;
        }

        public Criteria andEmpnameEqualTo(String value) {
            addCriterion("EmpName =", value, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameNotEqualTo(String value) {
            addCriterion("EmpName <>", value, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameGreaterThan(String value) {
            addCriterion("EmpName >", value, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameGreaterThanOrEqualTo(String value) {
            addCriterion("EmpName >=", value, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameLessThan(String value) {
            addCriterion("EmpName <", value, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameLessThanOrEqualTo(String value) {
            addCriterion("EmpName <=", value, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameLike(String value) {
            addCriterion("EmpName like", value, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameNotLike(String value) {
            addCriterion("EmpName not like", value, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameIn(List<String> values) {
            addCriterion("EmpName in", values, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameNotIn(List<String> values) {
            addCriterion("EmpName not in", values, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameBetween(String value1, String value2) {
            addCriterion("EmpName between", value1, value2, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpnameNotBetween(String value1, String value2) {
            addCriterion("EmpName not between", value1, value2, "empname");
            return (Criteria) this;
        }

        public Criteria andEmpsexIsNull() {
            addCriterion("EmpSex is null");
            return (Criteria) this;
        }

        public Criteria andEmpsexIsNotNull() {
            addCriterion("EmpSex is not null");
            return (Criteria) this;
        }

        public Criteria andEmpsexEqualTo(String value) {
            addCriterion("EmpSex =", value, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexNotEqualTo(String value) {
            addCriterion("EmpSex <>", value, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexGreaterThan(String value) {
            addCriterion("EmpSex >", value, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexGreaterThanOrEqualTo(String value) {
            addCriterion("EmpSex >=", value, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexLessThan(String value) {
            addCriterion("EmpSex <", value, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexLessThanOrEqualTo(String value) {
            addCriterion("EmpSex <=", value, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexLike(String value) {
            addCriterion("EmpSex like", value, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexNotLike(String value) {
            addCriterion("EmpSex not like", value, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexIn(List<String> values) {
            addCriterion("EmpSex in", values, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexNotIn(List<String> values) {
            addCriterion("EmpSex not in", values, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexBetween(String value1, String value2) {
            addCriterion("EmpSex between", value1, value2, "empsex");
            return (Criteria) this;
        }

        public Criteria andEmpsexNotBetween(String value1, String value2) {
            addCriterion("EmpSex not between", value1, value2, "empsex");
            return (Criteria) this;
        }

        public Criteria andIdcardIsNull() {
            addCriterion("IDcard is null");
            return (Criteria) this;
        }

        public Criteria andIdcardIsNotNull() {
            addCriterion("IDcard is not null");
            return (Criteria) this;
        }

        public Criteria andIdcardEqualTo(String value) {
            addCriterion("IDcard =", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotEqualTo(String value) {
            addCriterion("IDcard <>", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardGreaterThan(String value) {
            addCriterion("IDcard >", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardGreaterThanOrEqualTo(String value) {
            addCriterion("IDcard >=", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardLessThan(String value) {
            addCriterion("IDcard <", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardLessThanOrEqualTo(String value) {
            addCriterion("IDcard <=", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardLike(String value) {
            addCriterion("IDcard like", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotLike(String value) {
            addCriterion("IDcard not like", value, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardIn(List<String> values) {
            addCriterion("IDcard in", values, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotIn(List<String> values) {
            addCriterion("IDcard not in", values, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardBetween(String value1, String value2) {
            addCriterion("IDcard between", value1, value2, "idcard");
            return (Criteria) this;
        }

        public Criteria andIdcardNotBetween(String value1, String value2) {
            addCriterion("IDcard not between", value1, value2, "idcard");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoIsNull() {
            addCriterion("DepartmentNo is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoIsNotNull() {
            addCriterion("DepartmentNo is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoEqualTo(Integer value) {
            addCriterion("DepartmentNo =", value, "departmentno");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoNotEqualTo(Integer value) {
            addCriterion("DepartmentNo <>", value, "departmentno");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoGreaterThan(Integer value) {
            addCriterion("DepartmentNo >", value, "departmentno");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("DepartmentNo >=", value, "departmentno");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoLessThan(Integer value) {
            addCriterion("DepartmentNo <", value, "departmentno");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoLessThanOrEqualTo(Integer value) {
            addCriterion("DepartmentNo <=", value, "departmentno");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoIn(List<Integer> values) {
            addCriterion("DepartmentNo in", values, "departmentno");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoNotIn(List<Integer> values) {
            addCriterion("DepartmentNo not in", values, "departmentno");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoBetween(Integer value1, Integer value2) {
            addCriterion("DepartmentNo between", value1, value2, "departmentno");
            return (Criteria) this;
        }

        public Criteria andDepartmentnoNotBetween(Integer value1, Integer value2) {
            addCriterion("DepartmentNo not between", value1, value2, "departmentno");
            return (Criteria) this;
        }

        public Criteria andPositivedatesIsNull() {
            addCriterion("Positivedates is null");
            return (Criteria) this;
        }

        public Criteria andPositivedatesIsNotNull() {
            addCriterion("Positivedates is not null");
            return (Criteria) this;
        }

        public Criteria andPositivedatesEqualTo(Date value) {
            addCriterion("Positivedates =", value, "positivedates");
            return (Criteria) this;
        }

        public Criteria andPositivedatesNotEqualTo(Date value) {
            addCriterion("Positivedates <>", value, "positivedates");
            return (Criteria) this;
        }

        public Criteria andPositivedatesGreaterThan(Date value) {
            addCriterion("Positivedates >", value, "positivedates");
            return (Criteria) this;
        }

        public Criteria andPositivedatesGreaterThanOrEqualTo(Date value) {
            addCriterion("Positivedates >=", value, "positivedates");
            return (Criteria) this;
        }

        public Criteria andPositivedatesLessThan(Date value) {
            addCriterion("Positivedates <", value, "positivedates");
            return (Criteria) this;
        }

        public Criteria andPositivedatesLessThanOrEqualTo(Date value) {
            addCriterion("Positivedates <=", value, "positivedates");
            return (Criteria) this;
        }

        public Criteria andPositivedatesIn(List<Date> values) {
            addCriterion("Positivedates in", values, "positivedates");
            return (Criteria) this;
        }

        public Criteria andPositivedatesNotIn(List<Date> values) {
            addCriterion("Positivedates not in", values, "positivedates");
            return (Criteria) this;
        }

        public Criteria andPositivedatesBetween(Date value1, Date value2) {
            addCriterion("Positivedates between", value1, value2, "positivedates");
            return (Criteria) this;
        }

        public Criteria andPositivedatesNotBetween(Date value1, Date value2) {
            addCriterion("Positivedates not between", value1, value2, "positivedates");
            return (Criteria) this;
        }

        public Criteria andEmpphoneIsNull() {
            addCriterion("EmpPhone is null");
            return (Criteria) this;
        }

        public Criteria andEmpphoneIsNotNull() {
            addCriterion("EmpPhone is not null");
            return (Criteria) this;
        }

        public Criteria andEmpphoneEqualTo(String value) {
            addCriterion("EmpPhone =", value, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneNotEqualTo(String value) {
            addCriterion("EmpPhone <>", value, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneGreaterThan(String value) {
            addCriterion("EmpPhone >", value, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneGreaterThanOrEqualTo(String value) {
            addCriterion("EmpPhone >=", value, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneLessThan(String value) {
            addCriterion("EmpPhone <", value, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneLessThanOrEqualTo(String value) {
            addCriterion("EmpPhone <=", value, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneLike(String value) {
            addCriterion("EmpPhone like", value, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneNotLike(String value) {
            addCriterion("EmpPhone not like", value, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneIn(List<String> values) {
            addCriterion("EmpPhone in", values, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneNotIn(List<String> values) {
            addCriterion("EmpPhone not in", values, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneBetween(String value1, String value2) {
            addCriterion("EmpPhone between", value1, value2, "empphone");
            return (Criteria) this;
        }

        public Criteria andEmpphoneNotBetween(String value1, String value2) {
            addCriterion("EmpPhone not between", value1, value2, "empphone");
            return (Criteria) this;
        }

        public Criteria andIntergralnoIsNull() {
            addCriterion("intergralNo is null");
            return (Criteria) this;
        }

        public Criteria andIntergralnoIsNotNull() {
            addCriterion("intergralNo is not null");
            return (Criteria) this;
        }

        public Criteria andIntergralnoEqualTo(Integer value) {
            addCriterion("intergralNo =", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoNotEqualTo(Integer value) {
            addCriterion("intergralNo <>", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoGreaterThan(Integer value) {
            addCriterion("intergralNo >", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("intergralNo >=", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoLessThan(Integer value) {
            addCriterion("intergralNo <", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoLessThanOrEqualTo(Integer value) {
            addCriterion("intergralNo <=", value, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoIn(List<Integer> values) {
            addCriterion("intergralNo in", values, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoNotIn(List<Integer> values) {
            addCriterion("intergralNo not in", values, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoBetween(Integer value1, Integer value2) {
            addCriterion("intergralNo between", value1, value2, "intergralno");
            return (Criteria) this;
        }

        public Criteria andIntergralnoNotBetween(Integer value1, Integer value2) {
            addCriterion("intergralNo not between", value1, value2, "intergralno");
            return (Criteria) this;
        }

        public Criteria andPositionIsNull() {
            addCriterion("position is null");
            return (Criteria) this;
        }

        public Criteria andPositionIsNotNull() {
            addCriterion("position is not null");
            return (Criteria) this;
        }

        public Criteria andPositionEqualTo(Integer value) {
            addCriterion("position =", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotEqualTo(Integer value) {
            addCriterion("position <>", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionGreaterThan(Integer value) {
            addCriterion("position >", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionGreaterThanOrEqualTo(Integer value) {
            addCriterion("position >=", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionLessThan(Integer value) {
            addCriterion("position <", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionLessThanOrEqualTo(Integer value) {
            addCriterion("position <=", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionIn(List<Integer> values) {
            addCriterion("position in", values, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotIn(List<Integer> values) {
            addCriterion("position not in", values, "position");
            return (Criteria) this;
        }

        public Criteria andPositionBetween(Integer value1, Integer value2) {
            addCriterion("position between", value1, value2, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotBetween(Integer value1, Integer value2) {
            addCriterion("position not between", value1, value2, "position");
            return (Criteria) this;
        }

        public Criteria andEmptypeIsNull() {
            addCriterion("empType is null");
            return (Criteria) this;
        }

        public Criteria andEmptypeIsNotNull() {
            addCriterion("empType is not null");
            return (Criteria) this;
        }

        public Criteria andEmptypeEqualTo(Integer value) {
            addCriterion("empType =", value, "emptype");
            return (Criteria) this;
        }

        public Criteria andEmptypeNotEqualTo(Integer value) {
            addCriterion("empType <>", value, "emptype");
            return (Criteria) this;
        }

        public Criteria andEmptypeGreaterThan(Integer value) {
            addCriterion("empType >", value, "emptype");
            return (Criteria) this;
        }

        public Criteria andEmptypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("empType >=", value, "emptype");
            return (Criteria) this;
        }

        public Criteria andEmptypeLessThan(Integer value) {
            addCriterion("empType <", value, "emptype");
            return (Criteria) this;
        }

        public Criteria andEmptypeLessThanOrEqualTo(Integer value) {
            addCriterion("empType <=", value, "emptype");
            return (Criteria) this;
        }

        public Criteria andEmptypeIn(List<Integer> values) {
            addCriterion("empType in", values, "emptype");
            return (Criteria) this;
        }

        public Criteria andEmptypeNotIn(List<Integer> values) {
            addCriterion("empType not in", values, "emptype");
            return (Criteria) this;
        }

        public Criteria andEmptypeBetween(Integer value1, Integer value2) {
            addCriterion("empType between", value1, value2, "emptype");
            return (Criteria) this;
        }

        public Criteria andEmptypeNotBetween(Integer value1, Integer value2) {
            addCriterion("empType not between", value1, value2, "emptype");
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