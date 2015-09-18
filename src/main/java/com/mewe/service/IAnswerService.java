package com.mewe.service;

import com.mewe.model.AnswerModel;
import com.mewe.pojo.Answer;

public interface IAnswerService {

	boolean addAnswer(AnswerModel ansModel);
	
	boolean updateAnswer(AnswerModel ansModel);
	
	Answer retrieveAnswer(int basicId);
}
