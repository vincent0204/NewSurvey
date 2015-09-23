package com.mewe.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mewe.model.QuestionModel;
import com.mewe.pojo.Question;
import com.mewe.service.IQuestionService;

@Controller  
@RequestMapping("/interventionEvaluationController")
public class InterventionEvaluationController {
	/**
	 * @author Eric
	 * @date   2015/09/19
	 * @function Question Survery
	 */
	
	@Resource
	private IQuestionService questionService;
	private String globalBasicInfoId;
	private int initSectionId = 1;
	
	@RequestMapping(value = "/toInterventionEvaluationPage", method = RequestMethod.GET)
	public String toInterventionEvaluationPage(HttpServletRequest request,Model model,
			@RequestParam String basicInfoId) {
		System.out.println("Current section (toInterventionEvaluationPage) : " + initSectionId);
		globalBasicInfoId = basicInfoId;
		QuestionModel questionModel = new QuestionModel();
		List<Question> questionList = this.questionService.getQuestionsInSection(initSectionId, basicInfoId);
		questionModel.setQuestionList(questionList);
		questionModel.setSectionLabel(questionList.get(0).getSectionLabel());
		
		model.addAttribute("questionModel", questionModel);
		
		return "interventionEvaluation";
	}
	
	@RequestMapping(value = "/toNextInterventionEvaluationPage", method = RequestMethod.POST)
	public String toNextInterventionEvaluationPage(HttpServletRequest request,Model model,
			@ModelAttribute("contentModel") QuestionModel questionModel) {
		initSectionId++;
		System.out.println("Current section (toNextInterventionEvaluationPage) : " + initSectionId);
		if (initSectionId >14) return null;
		
		List<Question> questionList = this.questionService.getQuestionsInSection(
				initSectionId, globalBasicInfoId);
		questionModel.setQuestionList(questionList);
		questionModel.setSectionLabel(questionList.get(0).getSectionLabel());
		
		model.addAttribute("questionModel", questionModel);
		
		return "interventionEvaluation";
	}
}
