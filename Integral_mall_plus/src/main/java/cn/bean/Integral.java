package cn.bean;

import java.util.Date;
//积分表
public class Integral {
    private Integer intergralno;

    private Integer totalintegral;

    private Integer haveintegral;

    private Integer remainingpoints;

    private Date lastchangetime;

    public Integer getIntergralno() {
        return intergralno;
    }

    public void setIntergralno(Integer intergralno) {
        this.intergralno = intergralno;
    }

    public Integer getTotalintegral() {
        return totalintegral;
    }

    public void setTotalintegral(Integer totalintegral) {
        this.totalintegral = totalintegral;
    }

    public Integer getHaveintegral() {
        return haveintegral;
    }

    public void setHaveintegral(Integer haveintegral) {
        this.haveintegral = haveintegral;
    }

    public Integer getRemainingpoints() {
        return remainingpoints;
    }

    public void setRemainingpoints(Integer remainingpoints) {
        this.remainingpoints = remainingpoints;
    }

    public Date getLastchangetime() {
        return lastchangetime;
    }

    public void setLastchangetime(Date lastchangetime) {
        this.lastchangetime = lastchangetime;
    }
}