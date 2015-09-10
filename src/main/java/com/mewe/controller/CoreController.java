package com.mewe.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mewe.pojo.BasicInfo;
import com.mewe.service.IBasicInfoService;

@Controller  
@RequestMapping("/core")  
public class CoreController {
	/**
	 * @author Eric
	 * @date   2015/09/08
	 * @function fill out basic Information
	 */
    @Resource  
    private IBasicInfoService ibasicInfoService;
    
    @RequestMapping(value = "/toBasicInfoPage", method = RequestMethod.GET)  
    public String toBasicInfoPage(HttpServletRequest request,Model model){  
        return "basicInfo";
    }
    
    @RequestMapping(value = "/saveBasicInfoRecord", method = RequestMethod.POST)
    public String saveBasicInfoRecord(HttpServletRequest request,Model model) {
    	String flag = request.getParameter("flag");
    	List<String> test = new ArrayList<String>();
    	test.add("111");
    	test.add("222");
    	test.add("333");
    	
    	if (flag.equals("1")) {
    		saveFirstBasicInfo(request);
    		model.addAttribute("test", test);
    		return "showUser";
    		
		}else if (flag.equals("2")) {
			saveSecondBasicInfo(request);
			return "nextPage";
			
		}
    	
    	return null;
    }
    
    private Boolean saveFirstBasicInfo(HttpServletRequest request) {
    	BasicInfo basicInfo = new BasicInfo();
    	basicInfo.setUsername(request.getParameter("userName"));  
    	basicInfo.setPhone(request.getParameter("phone"));  
        basicInfo.setSex(request.getParameterValues("sex")[0]);
        basicInfo.setAge(Integer.valueOf(request.getParameter("age")));
        basicInfo.setPhone(request.getParameter("height"));  
        basicInfo.setWeight(request.getParameter("weight")); 
        
    	return this.ibasicInfoService.saveFirstPage(basicInfo);
    }
    
    private Boolean saveSecondBasicInfo(HttpServletRequest request) {
    	
    	
    	return null;
    }
}
