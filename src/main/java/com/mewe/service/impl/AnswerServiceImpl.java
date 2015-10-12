package com.mewe.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.mewe.dao.IAnswerDao;
import com.mewe.dao.IBasicInfoDao;
import com.mewe.model.EvaluationResultsModel;
import com.mewe.model.QuestionModel;
import com.mewe.pojo.Answer;
import com.mewe.pojo.BasicInfo;
import com.mewe.service.IAnswerService;

@SuppressWarnings("restriction")
@Service("answerService")
public class AnswerServiceImpl implements IAnswerService {

	@Resource
	private IAnswerDao dao;

	@Resource
	private IBasicInfoDao basicInfoDao;
	
	private EvaluationResultsModel evaluationResultsModel;
	
	public Answer retrieveAnswer(int basicId) {
		return dao.search(basicId);
	}
	
	public BasicInfo searchBasicId (int basicId) {
		return basicInfoDao.searchId(basicId);
	}

	public boolean addAnswer(QuestionModel questionModel) {
		Map<String, String> questionAndAnswerMap = questionModel.getQuestionAndAnswerMap();
		int basicId = questionModel.getBasicId();
		String sectionId = questionModel.getSectionId();
		
			if (dao.search(basicId) != null) {
				return this.updateAnswer(questionModel);
			}
		
		
		
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
			
			computeAnswer(ans, sectionId, questionAndAnswerMap);
			
			return dao.add(ans) == 1;
		
		
		
		
	}

	public boolean updateAnswer(QuestionModel questionModel) {
		Map<String, String> questionAndAnswerMap = questionModel.getQuestionAndAnswerMap();
		int basicId = questionModel.getBasicId();
		String sectionId = questionModel.getSectionId();
		
		
		
		Answer ans = this.retrieveAnswer(basicId);
		if (ans == null) {
			return false;
		}
		
		ans.setCurrentsection(sectionId);
		ans.setModifiedby("admin");
		ans.setModifieddate(new Date());
		
		computeAnswer(ans, sectionId, questionAndAnswerMap);
		
		return dao.update(ans) == 1;
	}

	private void computeAnswer(Answer ans, String sectionId, Map<String, String> questionAndAnswerMap) {
		int points = 0;
		String detail = "";
		String sectionString = "01".equals(sectionId)? "" : "-";
		String conclusionString = StringUtils.isEmpty(ans.getConclusionsectionstring())? "" : "-";
		
		List<String> qList = new ArrayList<String>(questionAndAnswerMap.keySet());
		Collections.sort(qList);
		for (String qId : qList) {
			String qPoint = questionAndAnswerMap.get(qId);
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
			ans.setConclusionsectionstring(ans.getConclusionsectionstring() + conclusionString);
		} 
		
		ans.setPointtotal(ans.getPointtotal() + points);
		ans.setAnswersectionstring(ans.getAnswersectionstring() + sectionString);
		ans.setAnswerdetailstring(ans.getAnswerdetailstring() + detail);
		
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
		int fromIndex = conList.size() - 3 > 0 ? conList.size() - 3 : 0;
		int toIndex = conList.size();
		
		conList = conList.subList(fromIndex, toIndex);
		
		List<String> resList = new ArrayList<String>();
		for (String res : conList) {
			resList.add(conMap.get(res));
		}
		ans.setFinalconclusion(String.join("-", resList));
	}

	/**
	 * @author Eric
	 * @date 2015/09/28
	 */
	public EvaluationResultsModel autoMappingForPointsAndImages(String basicInfoId) {
		int sum = 0;
		evaluationResultsModel = new EvaluationResultsModel();
		Integer pointtotal = this.retrieveAnswer(Integer.valueOf(basicInfoId)).getPointtotal();
		BasicInfo basicInfo = this.basicInfoDao.selectByPrimaryKey(basicInfoId);
		
		// 慢性病 record id 20
		// 主诉求
		if (!StringUtils.isEmpty(basicInfo.getMainreq()) && 
				20 == Integer.valueOf(basicInfo.getMainreq())) {
			if (!StringUtils.isEmpty(basicInfo.getMainsubreq())) sum++;
		}
		
		// 其他诉求
		if (!StringUtils.isEmpty(basicInfo.getOtherreq()) &&
				20 == Integer.valueOf(basicInfo.getMainreq())) {
			if (!StringUtils.isEmpty(basicInfo.getOthersubreq())) 
				sum = sum + basicInfo.getOthersubreq().split(",").length;
		}
		
		if (sum > 0 && sum <= 2) {
			evaluationResultsModel.setImageName("jibingzaoqi.jpg");
			evaluationResultsModel.setDescription("疾病早期");
		}else if (sum >= 3 && sum <= 4) {
			evaluationResultsModel.setImageName("jibingzhognqi.jpg");
			evaluationResultsModel.setDescription("疾病中期");
		}else if (sum >= 5) {
			evaluationResultsModel.setImageName("jibingtupu.jpg");
			evaluationResultsModel.setDescription("疾病晚期");
		}else {
			if (pointtotal == 0) {
				evaluationResultsModel.setImageName("jibingtupu.jpg");
				evaluationResultsModel.setDescription("健康");
			}else if (pointtotal >= 1 &&  pointtotal <= 27) {
				evaluationResultsModel.setImageName("qingduyajiankang.jpg");
				evaluationResultsModel.setDescription("轻度亚健康(轻度身心失调)");
			}else if (pointtotal >= 28 && pointtotal <= 83) {
				evaluationResultsModel.setImageName("zhongduyajiankang.jpg");
				evaluationResultsModel.setDescription("中度亚健康('潜临床'状态)");
			}else if (pointtotal >= 84) {
				evaluationResultsModel.setImageName("zhongduyajiankang2.jpg");
				evaluationResultsModel.setDescription("重度亚健康('前临床'状态)");
			}
		}
		
		return evaluationResultsModel;
	} 
}
