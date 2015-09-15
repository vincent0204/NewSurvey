package com.mewe.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    	int recordId = saveFirstBasicInfo(request);
    	System.out.println("recordId--->"+recordId);
    	WorkEnvironmentModel workEnvironmentModel = new WorkEnvironmentModel();
        workEnvironmentModel.setWorkEnvironmentMap(this.iworkEnvironmentService.queryAllWorkEnvironmentsByMap());
        workEnvironmentModel.setMainRequestMap(this.irequestService.queryAllMainRequestMap());
        model.addAttribute("contentModel", workEnvironmentModel);
    	return "basicInfo2";
    }
    
//    Test--------------------------
    @RequestMapping(value = "/saveSecondBasicInfoRecord", method = RequestMethod.GET)
	public String saveSecondBasicInfoRecord(HttpServletRequest request,Model model) {
    	WorkEnvironmentModel workEnvironmentModel = new WorkEnvironmentModel();
        workEnvironmentModel.setWorkEnvironmentMap(this.iworkEnvironmentService.queryAllWorkEnvironmentsByMap());
        workEnvironmentModel.setMainRequestMap(this.irequestService.queryAllMainRequestMap());
        model.addAttribute("contentModel", workEnvironmentModel);
	    	
	    return "basicInfo2";
	}
    
    @RequestMapping(value = "/accMianReqIdtoSearchOtherReq", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> accMianReqIdtoSearchOtherReq(HttpServletRequest request,Model model) {
    	return this.irequestService.queryAllOtherRequestMap(request.getParameter("selected_mainRequestId"));
    }
    
    private int saveFirstBasicInfo(HttpServletRequest request) {

    	BasicInfo basicInfo = new BasicInfo();
    	basicInfo.setUsername(request.getParameter("userName"));  
    	basicInfo.setPhone(request.getParameter("phone"));  
        basicInfo.setSex(request.getParameterValues("sex")[0]);
        basicInfo.setAge(Integer.valueOf(request.getParameter("age")));
        basicInfo.setPhone(request.getParameter("height"));  
        basicInfo.setWeight(request.getParameter("weight")); 
        
    	return this.ibasicInfoService.saveFirstPage(basicInfo);
    }
    
}
