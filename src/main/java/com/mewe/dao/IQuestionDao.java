package com.mewe.dao;

import java.util.List;

import com.mewe.pojo.Question;

public interface IQuestionDao {
	
	List<Question> selectAllQuestions();
}