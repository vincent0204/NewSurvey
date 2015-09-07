package com.mewe.controller;

import javax.annotation.Resource; 
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mewe.pojo.BasicInfo;
import com.mewe.service.IBasicInfoService;

@Controller  
@RequestMapping("/user")  
public class TestController {
	
    @Resource  
    private IBasicInfoService ibasicInfoService;
    
    @RequestMapping("/showUser")  
    public String toIndex(HttpServletRequest request,Model model){  
        String userId = request.getParameter("id");  
        BasicInfo basicInfo = this.ibasicInfoService.selectByPrimaryKey(userId);  
        model.addAttribute("basicInfo", basicInfo);
        System.out.println("basicInfo...."+basicInfo);
        return "showUser";
    }
}
