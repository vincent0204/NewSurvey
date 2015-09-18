package com.mewe.dao;

import com.mewe.pojo.Answer;

public interface IAnswerDao {

	int add(Answer ans);
	
	int update(Answer ans);

	Answer search(int basicId);
}