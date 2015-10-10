package com.mewe.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mewe.pojo.Question;

public class QuestionModel {
	
	private String id;
	
	private int basicId;
	
	private String sectionId;
	
	private String sectionLabel;
	
	private String buttonFlag;
	
	private Map<String, String> questionAndAnswerMap = new HashMap<String, String>();
	
	private List<Question> questionList = new ArrayList<Question>();

	public String getButtonFlag() {
		return buttonFlag;
	}

	public void setButtonFlag(String buttonFlag) {
		this.buttonFlag = buttonFlag;
	}

	public Map<String, String> getQuestionAndAnswerMap() {
		return questionAndAnswerMap;
	}

	public void setQuestionAndAnswerMap(Map<String, String> questionAndAnswerMap) {
		this.questionAndAnswerMap = questionAndAnswerMap;
	}

	public String getSectionId() {
		return sectionId;
	}

	public void setSectionId(String sectionId) {
		this.sectionId = sectionId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getBasicId() {
		return basicId;
	}

	public void setBasicId(int basicId) {
		this.basicId = basicId;
	}

	public String getSectionLabel() {
		return sectionLabel;
	}

	public void setSectionLabel(String sectionLabel) {
		this.sectionLabel = sectionLabel;
	}

	public List<Question> getQuestionList() {
		return questionList;
	}

	public void setQuestionList(List<Question> questionList) {
		this.questionList = questionList;
	}

	
	
}
