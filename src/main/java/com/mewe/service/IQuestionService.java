/**
 * 
 */
package com.mewe.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mewe.model.QuestionModel;
import com.mewe.pojo.Question;

/**
 * @author vincent
 *
 */
public interface IQuestionService {
	
	List<Question> getQuestionsInSection(String sectionId, String basicInfoId);
	
	boolean calculatePoints(HttpServletRequest request,List<Question> questionList, 
			QuestionModel questionModel);
}
