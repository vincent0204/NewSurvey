package com.mewe.controller;

import java.util.ArrayList;
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
import com.mewe.pojo.Answer;
import com.mewe.pojo.Conclusion;
import com.mewe.pojo.Question;
import com.mewe.service.IAnswerService;
import com.mewe.service.IConclusionService;
import com.mewe.service.IQuestionService;

@Controller  
@RequestMapping("/interventionEvaluationController")
public class InterventionEvaluationController {
	/**
	 * @author Eric
	 * @date   2015/09/19
	 * @function Question Survey 
	 */
	
	@Resource
	private IQuestionService questionService;
	@Resource
	private IAnswerService answerService;
	@Resource
	private IConclusionService conclusionService;
	
	private QuestionModel questionModel;
	private EvaluationResultsModel evaluationResultsModel;
	private Conclusion conclusion;
	private String globalBasicInfoId;
	private int initSectionId = 1;
	private String nextSection = null;
	List<Question> questionList;
	
	@RequestMapping(value = "/toInterventionEvaluationPage", method = RequestMethod.GET)
	public String toInterventionEvaluationPage(HttpServletRequest request,Model model,
			@RequestParam String basicInfoId) {
		globalBasicInfoId = basicInfoId;
		nextSection = "0"+initSectionId;
		System.out.println("nextSection" + nextSection);
		System.out.println("basicInfoId in interventionEvaluationController : " + basicInfoId);
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
			}else{
				
			     Answer answer = answerService.retrieveAnswer(Integer.parseInt(globalBasicInfoId)); 
			     if(initSectionId>1){
			        String[] answerDetailString = (answer.getAnswerdetailstring()).split("-");
			      	String newanswerDetailString = "";
			    	 for(int i = 0; i<(initSectionId-1)*6;i++){
			    		 if(i<(initSectionId-1)*6-1){
			    			 newanswerDetailString+=answerDetailString[i]+"-";
			    		 }else{
			    			 newanswerDetailString+=answerDetailString[i];
			    		 }
			    		}
			     
			    	 String[] answerSectionString = (answer.getAnswersectionstring()).split("-");
			    	 String newanswerScetionString = ""; 
			    	 for(int i = 0; i<initSectionId-1;i++){
			    		 if(i<initSectionId-2){
			    			 newanswerScetionString+=answerSectionString[i]+"-";
			    		 }else{
			    			 newanswerScetionString+=answerSectionString[i];
			    		 }
			    		}
			    	 answer.setAnswerdetailstring(newanswerDetailString);
			    	 answer.setAnswersectionstring(newanswerScetionString);
			    	 answerService.update(answer);
			     }else{
			    	 answer.setAnswerdetailstring("");
			    	 answer.setAnswersectionstring("");
			    	 answerService.update(answer);
			     }
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
	
	@RequestMapping( value = "/toEvaluationResult", method = RequestMethod.POST)
	public String toEvaluationResult(HttpServletRequest request,Model model){
		
		initSectionId = 1;
		nextSection = null;
		
		String finalConclusion = (answerService.retrieveAnswer(Integer.parseInt(globalBasicInfoId))).getFinalconclusion();
	    String[] conclusionArray = finalConclusion.split("-");
	    
		List<Conclusion>  list = new ArrayList<Conclusion>();
		for(int i = 0; i < conclusionArray.length;i++){
			list.add(conclusionService.selectBySectionId(conclusionArray[i]));
		}
		
		model.addAttribute("erlist", list);
		model.addAttribute("code", globalBasicInfoId);
		return "evaluationResult";
	}
}
