package com.mewe.service;

import com.mewe.model.QuestionModel;
import com.mewe.pojo.Answer;

public interface IAnswerService {

	boolean addAnswer(QuestionModel ansModel);
	
	boolean updateAnswer(QuestionModel ansModel);
	
	Answer retrieveAnswer(int basicId);
}
