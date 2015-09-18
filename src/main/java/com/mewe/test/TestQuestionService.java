package com.mewe.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mewe.service.IQuestionService;

@SuppressWarnings("restriction")
@RunWith(SpringJUnit4ClassRunner.class)
// 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml" })
public class TestQuestionService {

	@Resource
	private IQuestionService service;

	@Test
	public void testLoadQuestions() {
		// service.getQuestionsInSection(11, "1");
		service.getQuestionsInSection(11, "0");
	}
}
