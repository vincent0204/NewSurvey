package com.mewe.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mewe.dao.IQuestionDao;
import com.mewe.pojo.Question;
import com.mewe.service.IQuestionService;

@Service("questionService")
public class QuestionServiceImpl implements IQuestionService {
	@Resource
	private IQuestionDao dao;
	
	private static Map<Integer, List<Question>> sectionMap;
	
	public void loadQuestions() {
		System.out.println("loadingQuestions in section!");

		List<Question> questions = dao.selectAllQuestions();
		
		for (Question question : questions) {
			int sectionId = question.getSectionid();
			if (sectionMap.get(sectionId) == null) {
				sectionMap.put(sectionId, new ArrayList<Question>());
			}
			
			List<Question> questionsInSection = sectionMap.get(sectionId);
			questionsInSection.add(question);
		}
		System.out.println("loadQuestions in section finish!");
	}
	
	public List<Question> getQuestionsInSection(Integer sectionId){
		
		if(sectionMap == null){
			sectionMap = new HashMap<Integer, List<Question>>();
			loadQuestions();
		}
		
		return sectionMap.get(sectionId);
	}

	public List<Question> getQuestionsInSection(Integer sectionId, String isMale) {
		List<Question> questionsInSection = getQuestionsInSection(sectionId);
		List<Question> questions = new ArrayList<Question>();
		
		for (Question question : questionsInSection) {
			if (isMale.equals(question.getIsMale())) {
				questions.add(question);
				System.out.println(question.getId() + ", " + question.getLabel());
			}
		}
		
		return questions;
	}
}
