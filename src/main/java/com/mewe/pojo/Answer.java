package com.mewe.pojo;

import java.util.Date;

public class Answer {
	private int id;

	private int basicid;

	private Integer pointtotal;

	private String finalconclusion;

	private String currentsection;

	private String createdby;

	private Date createddate;

	private String modifiedby;

	private Date modifieddate;

	private String answerdetailstring;

	private String answerdetailjson;

	private String answersectionstring;

	private String conclusionsectionstring;

	public String getAnswerdetailstring() {
		return answerdetailstring;
	}

	public void setAnswerdetailstring(String answerdetailstring) {
		this.answerdetailstring = answerdetailstring == null ? null : answerdetailstring.trim();
	}

	public String getAnswerdetailjson() {
		return answerdetailjson;
	}

	public void setAnswerdetailjson(String answerdetailjson) {
		this.answerdetailjson = answerdetailjson == null ? null : answerdetailjson.trim();
	}

	public String getAnswersectionstring() {
		return answersectionstring;
	}

	public void setAnswersectionstring(String answersectionstring) {
		this.answersectionstring = answersectionstring == null ? null : answersectionstring.trim();
	}

	public String getConclusionsectionstring() {
		return conclusionsectionstring;
	}

	public void setConclusionsectionstring(String conclusionsectionstring) {
		this.conclusionsectionstring = conclusionsectionstring;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBasicid() {
		return basicid;
	}

	public void setBasicid(int basicid) {
		this.basicid = basicid;
	}

	public Integer getPointtotal() {
		return pointtotal;
	}

	public void setPointtotal(Integer pointtotal) {
		this.pointtotal = pointtotal;
	}

	public String getFinalconclusion() {
		return finalconclusion;
	}

	public void setFinalconclusion(String finalconclusion) {
		this.finalconclusion = finalconclusion == null ? null : finalconclusion.trim();
	}

	public String getCurrentsection() {
		return currentsection;
	}

	public void setCurrentsection(String currentsection) {
		this.currentsection = currentsection;
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

	public Date getModifieddate() {
		return modifieddate;
	}

	public void setModifieddate(Date modifieddate) {
		this.modifieddate = modifieddate;
	}
}