package com.mewe.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.mewe.dao.IAnswerDao;
import com.mewe.model.AnswerModel;
import com.mewe.pojo.Answer;
import com.mewe.service.IAnswerService;

@SuppressWarnings("restriction")
@Service("answerService")
public class AnswerServiceImpl implements IAnswerService {

	@Resource
	private IAnswerDao dao;
	
	public Answer retrieveAnswer(int basicId) {
		return dao.search(basicId);
	}

	public boolean addAnswer(AnswerModel ansModel) {
		Map<String, String> answerMap = ansModel.getAnswerMap();
		int basicId = ansModel.getBasicId();
		String sectionId = ansModel.getSectionId();
		
		Answer ans = new Answer();
		
		ans.setBasicid(basicId);
		ans.setCurrentsection(sectionId);
		ans.setAnswerdetailstring("");
		ans.setAnswersectionstring("");
		ans.setPointtotal(0);
		ans.setConclusionsectionstring("");
		ans.setFinalconclusion("");
		ans.setCreatedby("admin");
		ans.setCreateddate(new Date());
		ans.setModifiedby("admin");
		ans.setModifieddate(new Date());
		
		computeAnswer(ans, sectionId, answerMap);
		
		return dao.add(ans) == 1;
	}

	public boolean updateAnswer(AnswerModel ansModel) {
		Map<String, String> answerMap = ansModel.getAnswerMap();
		int basicId = ansModel.getBasicId();
		String sectionId = ansModel.getSectionId();
		
		Answer ans = this.retrieveAnswer(basicId);
		if (ans == null) {
			return false;
		}
		
		ans.setCurrentsection(sectionId);
		ans.setModifiedby("admin");
		ans.setModifieddate(new Date());
		
		computeAnswer(ans, sectionId, answerMap);
		
		return dao.update(ans) == 1;
	}

	private void computeAnswer(Answer ans, String sectionId, Map<String, String> answerMap) {
		int points = 0;
		String detail = "";
		String sectionString = "01".equals(sectionId)? "" : "-";
		String conclusionString = ans.getConclusionsectionstring().isEmpty()? "" : "-";
		
		for (String qId : answerMap.keySet()) {
			String qPoint = answerMap.get(qId);
			points += Integer.valueOf(qPoint);
			
			if ("0001".equals(qId)) {
				detail += qId + qPoint;
			} else {
				detail += "-" + qId + qPoint;
			}
		}
		
		sectionString += sectionId + String.valueOf(points);
		List<String> intervenedSections = new ArrayList<String>();
		intervenedSections.add("01");
		intervenedSections.add("02");
		intervenedSections.add("03");
		intervenedSections.add("04");
			
		int conPoints = intervenedSections.contains(sectionId)? points - 3 : points - 6;
		if (conPoints > 0) {
			conclusionString += sectionId + String.valueOf(conPoints);
		} 
		
		ans.setPointtotal(ans.getPointtotal() + points);
		ans.setAnswersectionstring(ans.getAnswersectionstring() + sectionString);
		ans.setAnswerdetailstring(ans.getAnswerdetailstring() + detail);
		ans.setConclusionsectionstring(ans.getConclusionsectionstring() + conclusionString);
		
		if ("14".equals(sectionId)) {
			setFinalConclusion(ans);
		}
	}

	private void setFinalConclusion(Answer ans) {
		Map<String, String> conMap = new HashMap<String, String>();
		
		String[] conArray = ans.getConclusionsectionstring().length() > 0 ? 
				ans.getConclusionsectionstring().split("-") : 
				ans.getAnswersectionstring().split("-");
		
		for (String con : conArray) {
			String sectionId = con.substring(0, 2);
			String points = con.substring(2);
			points = points.length() == 1 ? "0" + points : points;
			conMap.put(points + sectionId, sectionId);
		}
		
		List<String> conList = new ArrayList<String>(conMap.keySet());
		Collections.sort(conList);
		conList = conList.subList(0, Math.min(conList.size(), 3));
//		ans.setFinalconclusion(String.join("-", conList));
	} 
}
