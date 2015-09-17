package com.mewe.pojo;

import java.util.Date;

public class BasicInfo {
    private Integer id;

    private String wechatid;

    private String username;

    private String phone;

    private String sex;

    private Integer age;

    private String height;

    private String weight;

    private String workenvironment;

    private String otherworkenvironment;

    private String mainreq;

    private String otherreq;

    private String createdby;

    private Date createddate;

    private String modifiedby;

    private String isactive;

    private Date modifieddate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getWechatid() {
        return wechatid;
    }

    public void setWechatid(String wechatid) {
        this.wechatid = wechatid == null ? null : wechatid.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height == null ? null : height.trim();
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight == null ? null : weight.trim();
    }

    public String getWorkenvironment() {
        return workenvironment;
    }

    public void setWorkenvironment(String workenvironment) {
        this.workenvironment = workenvironment == null ? null : workenvironment.trim();
    }

    public String getOtherworkenvironment() {
        return otherworkenvironment;
    }

    public void setOtherworkenvironment(String otherworkenvironment) {
        this.otherworkenvironment = otherworkenvironment == null ? null : otherworkenvironment.trim();
    }

    public String getMainreq() {
        return mainreq;
    }

    public void setMainreq(String mainreq) {
        this.mainreq = mainreq == null ? null : mainreq.trim();
    }

    public String getOtherreq() {
        return otherreq;
    }

    public void setOtherreq(String otherreq) {
        this.otherreq = otherreq == null ? null : otherreq.trim();
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby == null ? null : createdby.trim();
    }

    public Date getCreateddate() {
        return createddate;
    }

    public void setCreateddate(Date createddate) {
        this.createddate = createddate;
    }

    public String getModifiedby() {
        return modifiedby;
    }

    public void setModifiedby(String modifiedby) {
        this.modifiedby = modifiedby == null ? null : modifiedby.trim();
    }

    public String getIsactive() {
        return isactive;
    }

    public void setIsactive(String isactive) {
        this.isactive = isactive == null ? null : isactive.trim();
    }

    public Date getModifieddate() {
        return modifieddate;
    }

    public void setModifieddate(Date modifieddate) {
        this.modifieddate = modifieddate;
    }
}