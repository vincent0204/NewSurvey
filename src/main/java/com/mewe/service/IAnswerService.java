package com.mewe.service;

import com.mewe.model.EvaluationResultsModel;
import com.mewe.model.QuestionModel;
import com.mewe.pojo.Answer;

public interface IAnswerService {
    
	boolean addAnswer(QuestionModel ansModel);
	
	boolean updateAnswer(QuestionModel ansModel);
	
	int update(Answer answer);
	
	Answer retrieveAnswer(int basicId);
	
	EvaluationResultsModel autoMappingForPointsAndImages(String basicInfoId);// Eric

}
