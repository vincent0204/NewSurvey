package com.mewe.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mewe.model.WorkEnvironmentModel;
import com.mewe.pojo.BasicInfo;
import com.mewe.service.IBasicInfoService;
import com.mewe.service.IRequestService;
import com.mewe.service.IWorkEnvironmentService;

@Controller  
@RequestMapping("/basicInfo")  
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
    
    @RequestMapping(value = "/toBasicInfoPage", method = RequestMethod.GET)  
    public String toBasicInfoPage(HttpServletRequest request,Model model){  
        return "basicInfo";
    }
    
    @RequestMapping(value = "/saveFirstBasicInfoRecord", method = RequestMethod.POST)
    public String saveFirstBasicInfoRecord(HttpServletRequest request,Model model) {
    	
    	WorkEnvironmentModel workEnvironmentModel = new WorkEnvironmentModel();
    	workEnvironmentModel.setRecordId(this.ibasicInfoService.saveFirstPage(request));
        workEnvironmentModel.setWorkEnvironmentMap(this.iworkEnvironmentService.queryAllWorkEnvironmentsByMap());
        workEnvironmentModel.setMainRequestMap(this.irequestService.queryAllMainRequestMap());
        
        model.addAttribute("contentModel", workEnvironmentModel);
    	return "basicInfo2";
    }
    
    @RequestMapping(value = "/saveSecondBasicInfoRecord", method = RequestMethod.POST)
	public String saveSecondBasicInfoRecord(HttpServletRequest request,Model model, 
			@ModelAttribute("contentModel") WorkEnvironmentModel workEnvironmentModel) {
    	
    	this.ibasicInfoService.saveSecondPage(workEnvironmentModel);
    	
    	return "test";
	}
    
    @RequestMapping(value = "/ajaxAccordingToMianReqIdtoSearchOtherReq", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> ajaxAccordingToMianReqIdtoSearchOtherReq(HttpServletRequest request,Model model, 
    		@RequestParam("selected_mainRequestId") String selected_mainRequestId) {
    	return this.irequestService.queryAllOtherRequestMap(selected_mainRequestId);
    }
    
}
