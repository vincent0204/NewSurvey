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

import com.mewe.model.EvaluationResultsModel;
import com.mewe.model.QuestionModel;
import com.mewe.pojo.Question;
import com.mewe.service.IAnswerService;
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
	@Resource
	private IAnswerService answerService;
	
	private QuestionModel questionModel;
	private EvaluationResultsModel evaluationResultsModel;
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
		System.out.println("ButtonFlag===>" + questionModel.getButtonFlag());
		
		if ("last".equals(questionModel.getButtonFlag())) {
			initSectionId--;
			if (initSectionId <= 0)	{
				initSectionId = 1;
				nextSection = null;
//				return "redirect:/basicInfoController/toBasicInfoPage?basicInfoId="+globalBasicInfoId;
			}
		}else {// next
			// Auto calculate points
			questionService.autoCalculatePoints(request, questionList, questionModel);
			initSectionId++;
			// More than 14 show result
			if (initSectionId >14) return this.toShowResult(model);
		}
		
		if (initSectionId > 0 && initSectionId < 10) {
			nextSection = "0"+initSectionId;
		} else {
			nextSection = String.valueOf(initSectionId);
		}
		
		System.out.println("Current section : " + nextSection);
		
		// Query next section
		questionList = this.questionService.getQuestionsInSection(
				nextSection, globalBasicInfoId);
		questionModel.setBasicId(Integer.valueOf(globalBasicInfoId));
		questionModel.setSectionId(nextSection);
		questionModel.setQuestionList(questionList);
		questionModel.setSectionLabel(questionList.get(0).getSectionLabel());
		
		model.addAttribute("questionModel", questionModel);
		
		return "interventionEvaluation";
	}
	
	public String toShowResult(Model model) {
		// init variable 
		initSectionId = 1;
		nextSection = null;
		
		evaluationResultsModel = new EvaluationResultsModel();
		evaluationResultsModel = this.answerService.autoMappingForPointsAndImages(globalBasicInfoId);
		
		model.addAttribute("evaluationResultsModel", evaluationResultsModel);
		return "showResult";
	}
}
