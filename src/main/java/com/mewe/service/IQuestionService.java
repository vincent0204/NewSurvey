/**
 * 
 */
package com.mewe.service;

import java.util.List;

import com.mewe.pojo.Question;

/**
 * @author vincent
 *
 */
public interface IQuestionService {
	
	List<Question> getQuestionsInSection(Integer sectionId, String isMale);
}
