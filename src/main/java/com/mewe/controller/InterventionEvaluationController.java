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
	
	private QuestionModel questionModel;
	private String globalBasicInfoId;
	private int initSectionId = 1;
	private String nextSection = null;
	List<Question> questionList;
	
	@RequestMapping(value = "/toInterventionEvaluationPage", method = RequestMethod.GET)
	public String toInterventionEvaluationPage(HttpServletRequest request,Model model,
			@RequestParam String basicInfoId) {
		globalBasicInfoId = basicInfoId;
		nextSection = "0"+initSectionId;
		questionList = this.questionService.getQuestionsInSection(nextSection, basicInfoId);
		
		questionModel = new QuestionModel();
		questionModel.setBasicId(Integer.valueOf(globalBasicInfoId));
		questionModel.setSectionId(nextSection);
		questionModel.setQuestionList(questionList);
		questionModel.setSectionLabel(questionList.get(0).getSectionLabel());
		
		model.addAttribute("questionModel", questionModel);
		
		return "interventionEvaluation";
	}
	
	@RequestMapping(value = "/toNextInterventionEvaluationPage", method = RequestMethod.POST)
	public String toNextInterventionEvaluationPage(HttpServletRequest request,Model model, 
			@ModelAttribute("questionModel") QuestionModel questionModel) {
		// Auto calculate points
		questionService.autoCalculatePoints(request, questionList, questionModel);
		
		initSectionId++;
		// More than 14
		if (initSectionId >14) return "showResult";
		
		if (initSectionId < 10) {
			nextSection = "0"+initSectionId;
		} else {
			nextSection = String.valueOf(initSectionId);
		}
		questionModel.setSectionId(String.valueOf(nextSection));
		System.out.println("Current section : " + nextSection);
		
		// Query next section
		questionList = this.questionService.getQuestionsInSection(
				nextSection, globalBasicInfoId);
		questionModel = new QuestionModel();
		questionModel.setBasicId(Integer.valueOf(globalBasicInfoId));
		questionModel.setSectionId(nextSection);
		questionModel.setQuestionList(questionList);
		questionModel.setSectionLabel(questionList.get(0).getSectionLabel());
		
		model.addAttribute("questionModel", questionModel);
		
		return "interventionEvaluation";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(HttpServletRequest request,Model model) {
		return "showResult";
	}
}
