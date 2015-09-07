package com.mewe.pojo;

import java.util.Date;

public class PicklistRequest {
    private String id;

    private String parentid;

    private String level;

    private String label;

    private Integer sequence;

    private String mainrequest;

    private String otherrequest;

    private String ismini;

    private String miniid;

    private String isactive;

    private String createby;

    private Date createddate;

    private String modifyby;

    private Date modifydate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getParentid() {
        return parentid;
    }

    public void setParentid(String parentid) {
        this.parentid = parentid == null ? null : parentid.trim();
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level == null ? null : level.trim();
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label == null ? null : label.trim();
    }

    public Integer getSequence() {
        return sequence;
    }

    public void setSequence(Integer sequence) {
        this.sequence = sequence;
    }

    public String getMainrequest() {
        return mainrequest;
    }

    public void setMainrequest(String mainrequest) {
        this.mainrequest = mainrequest == null ? null : mainrequest.trim();
    }

    public String getOtherrequest() {
        return otherrequest;
    }

    public void setOtherrequest(String otherrequest) {
        this.otherrequest = otherrequest == null ? null : otherrequest.trim();
    }

    public String getIsmini() {
        return ismini;
    }

    public void setIsmini(String ismini) {
        this.ismini = ismini == null ? null : ismini.trim();
    }

    public String getMiniid() {
        return miniid;
    }

    public void setMiniid(String miniid) {
        this.miniid = miniid == null ? null : miniid.trim();
    }

    public String getIsactive() {
        return isactive;
    }

    public void setIsactive(String isactive) {
        this.isactive = isactive == null ? null : isactive.trim();
    }

    public String getCreateby() {
        return createby;
    }

    public void setCreateby(String createby) {
        this.createby = createby == null ? null : createby.trim();
    }

    public Date getCreateddate() {
        return createddate;
    }

    public void setCreateddate(Date createddate) {
        this.createddate = createddate;
    }

    public String getModifyby() {
        return modifyby;
    }

    public void setModifyby(String modifyby) {
        this.modifyby = modifyby == null ? null : modifyby.trim();
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }
}