package com.mewe.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.mewe.dao.IBasicInfoDao;
import com.mewe.dao.IQuestionDao;
import com.mewe.model.QuestionModel;
import com.mewe.pojo.Question;
import com.mewe.service.IAnswerService;
import com.mewe.service.IQuestionService;

@SuppressWarnings("restriction")
@Service("questionService")
public class QuestionServiceImpl implements IQuestionService {
	@Resource
	private IQuestionDao dao;
	@Resource
	private IBasicInfoDao basicInfoDao;
	@Resource
	private IAnswerService answerService;
	
	private static Map<String, List<Question>> sectionMap;
	
	public void loadQuestions() {
		System.out.println("loadingQuestions in section!");

		List<Question> questions = dao.selectAllQuestions();
		
		System.out.println("questions ===>" +questions.size());
		
		for (Question question : questions) {
			String sectionId = question.getSectionid();
			if (sectionMap.get(sectionId) == null) {
				sectionMap.put(sectionId, new ArrayList<Question>());
			}
			
			List<Question> questionsInSection = sectionMap.get(sectionId);
			questionsInSection.add(question);
			
//			sectionMap.put(sectionId, questionsInSection);
		}
		System.out.println("loadQuestions in section finish!");
	}
	
	public List<Question> getQuestionsInSection(String sectionId){
		
		if(sectionMap == null){
			sectionMap = new HashMap<String, List<Question>>();
			loadQuestions();
		}
		
		return sectionMap.get(sectionId);
	}

	public List<Question> getQuestionsInSection(String sectionId, String basicInfoId) {
		String isMale = basicInfoDao.selectByPrimaryKey(basicInfoId).getSex();
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
	
	/**
	 * @author Eric
	 * @date 2015/09/24
	 * @function Auto calculate points by section
	 */
	
	public boolean autoCalculatePoints(HttpServletRequest request,List<Question> questionList, 
			QuestionModel questionModel) {
		
		for (Question question : questionList) {
			String point = request.getParameterValues(question.getId()+"answerVal")[0];
			questionModel.getQuestionAndAnswerMap().put(question.getId(), point);
			
			System.out.println(
					"SectionLabel "+ questionModel.getSectionLabel() + 
					" recordId==>"+question.getId() + 
					" point : " + point);
		}
		
		if (Integer.valueOf(questionModel.getSectionId()) == 1) {
			return answerService.addAnswer(questionModel);
		}else {
			return answerService.updateAnswer(questionModel);
		}
	}
}
