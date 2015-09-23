package com.mewe.model;

import java.util.ArrayList;
import java.util.List;

import com.mewe.pojo.Question;

public class QuestionModel {
	
	private int basicId;
	
	private String sectionLabel;
	
	private List<Question> questionList = new ArrayList<Question>();

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
