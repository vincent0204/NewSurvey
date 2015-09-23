package com.mewe.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mewe.model.QuestionModel;
import com.mewe.service.IAnswerService;

@SuppressWarnings("restriction")
@RunWith(SpringJUnit4ClassRunner.class)
// 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml" })
public class TestAnswerService {

	@Resource
	private IAnswerService service;
	
//	@Test
//	public void testRetrieve() {
//		service.retrieveAnswer(49);
//	}
	
	@Test
	public void testAdd(){
		QuestionModel ansModel = new QuestionModel();
		ansModel.setBasicId(49);
//		ansModel.setSectionId("01");
		
		service.addAnswer(ansModel);
	}
//	
//	@Test
//	public void testUpdate(){
//		AnswerModel ansModel1 = new AnswerModel();
//		ansModel1.setBasicId(49);
//		ansModel1.setSectionId("01");
//		service.addAnswer(ansModel1);
//		
//		AnswerModel ansModel2 = new AnswerModel();
//		ansModel2.setBasicId(49);
//		ansModel2.setSectionId("02");
//		service.updateAnswer(ansModel2);
//	}
}
