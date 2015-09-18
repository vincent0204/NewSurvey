package com.mewe.model;

import java.util.HashMap;
import java.util.Map;

public class AnswerModel {
	
	private int basicId;
	private String sectionId;
	private Map<String, String> answerMap = new HashMap<String, String>();

	public Map<String, String> getAnswerMap() {
		return answerMap;
	}

	public void setAnswerMap(Map<String, String> answerMap) {
		this.answerMap = answerMap;
	}

	public int getBasicId() {
		return basicId;
	}

	public void setBasicId(int basicId) {
		this.basicId = basicId;
	}

	public String getSectionId() {
		return sectionId;
	}

	public void setSectionId(String sectionId) {
		this.sectionId = sectionId;
	}

	
}
