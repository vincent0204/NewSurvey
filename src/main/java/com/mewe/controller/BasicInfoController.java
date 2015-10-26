package com.mewe.controller;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mewe.model.BasicInfoModel;
import com.mewe.pojo.BasicInfo;
import com.mewe.service.IBasicInfoService;
import com.mewe.service.IRequestService;
import com.mewe.service.IWorkEnvironmentService;

@Controller  
@RequestMapping("/basicInfoController")  
public class BasicInfoController {
	/**
	 * @author Eric
	 * @date   2015/09/08
	 * @function fill out basic Information
	 */
    @Resource  
    private IBasicInfoService ibasicInfoService;
    @Resource
    private IWorkEnvironmentService iworkEnvironmentService;
    @Resource
    private IRequestService irequestService;
    
    private BasicInfoModel BasicInfoModel;
    private String basicInfoId = null;
    
    @RequestMapping(value = "/toBasicInfoPage", method = RequestMethod.GET)  
    public String toBasicInfoPage(HttpServletRequest request,Model model){
    	
//    	basicInfoId = request.getParameter("basicInfoId");
//    	BasicInfo basicInfo;
//    	if(!StringUtils.isEmpty(basicInfoId)) {
//    		basicInfo = this.ibasicInfoService.selectByPrimaryKey(basicInfoId);
//    	}
    	
    	BasicInfoModel = new BasicInfoModel();
    	if (StringUtils.isEmpty(basicInfoId)) BasicInfoModel.setSex("1");//default value
    	Map<String, String> mainOrOtherReqMap = this.irequestService.queryAllMainRequestMap();
        BasicInfoModel.setWorkEnvironmentMap(this.iworkEnvironmentService.queryAllWorkEnvironmentsByMap());
        BasicInfoModel.setMainRequestMap(mainOrOtherReqMap);
        BasicInfoModel.setOtherRequestMap(mainOrOtherReqMap);
        
        model.addAttribute("BasicInfoModel", BasicInfoModel);
        return "basicInfo";
    }
    
    @RequestMapping(value = "/saveBasicInfoRecord", method = RequestMethod.POST)
	public String saveSecondBasicInfoRecord(HttpServletRequest request, HttpServletResponse response, Model model, 
			@ModelAttribute("BasicInfoModel") BasicInfoModel basicInfoModel) throws IOException {
    	
    	return "redirect:/interventionEvaluationController/toInterventionEvaluationPage?basicInfoId="+
    			this.ibasicInfoService.saveBasicInfoRecord(basicInfoModel);
	}
    
    @RequestMapping(value = "/ajaxAccordingToMianOrOtherReqIdtoSearchSubReq", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> ajaxAccordingToMianOrOtherReqIdtoSearchSubReq(HttpServletRequest request,Model model, 
    		@RequestParam("selected_mainOrOtherRequestId") String selected_mainOrOtherRequestId) {
    	return this.irequestService.queryAllSubRequestMap(selected_mainOrOtherRequestId);
    }
    
    @RequestMapping(value = "/ajaxQueryOtherReq", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> ajaxQueryOtherReq(HttpServletRequest request,Model model) {
    	return this.irequestService.queryAllOtherRequestMap();
    }
    
}
