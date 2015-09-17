package com.mewe.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.mewe.dao.IBasicInfoDao;
import com.mewe.model.WorkEnvironmentModel;
import com.mewe.pojo.BasicInfo;
import com.mewe.service.IBasicInfoService;

@Service("basicInfoService")
public class BasicInfoServiceImpl implements IBasicInfoService {
	@Resource
	private IBasicInfoDao basicInfoDao;
	
	public BasicInfo selectByPrimaryKey(String id) {
		return this.basicInfoDao.selectByPrimaryKey(id);
	}
	
	public int saveFirstPage(HttpServletRequest request) {
		BasicInfo basicInfo = new BasicInfo();
    	basicInfo.setUsername(request.getParameter("userName"));
    	basicInfo.setPhone(request.getParameter("phone"));  
        basicInfo.setSex(request.getParameterValues("sex")[0]);
        basicInfo.setAge(Integer.valueOf(request.getParameter("age")));
        basicInfo.setPhone(request.getParameter("height"));  
        basicInfo.setWeight(request.getParameter("weight")); 
        
		this.basicInfoDao.insert(basicInfo);
		int recordId = this.basicInfoDao.selectInsertedRecordId();
		System.out.println("SaveFirstPage insert successfully! Record Id = > " + recordId);
		
		return recordId;
	}

	public List<String> queryAllWorkEnvironments() {
		return this.basicInfoDao.selectAllWorkEnvironments();
	}

	public int saveSecondPage(WorkEnvironmentModel workEnvironmentModel) {
		BasicInfo toUpdateBasicInfo = new BasicInfo();
		toUpdateBasicInfo.setId(workEnvironmentModel.getRecordId());
		toUpdateBasicInfo.setWorkenvironment(workEnvironmentModel.getSelected_workEnvironmentId());
		toUpdateBasicInfo.setOtherworkenvironment(workEnvironmentModel.getOtherWorkEnvironment());
		toUpdateBasicInfo.setMainreq(workEnvironmentModel.getSelected_mainRequestId());
		toUpdateBasicInfo.setIsactive("1");
		toUpdateBasicInfo.setCreatedby("admin");
		toUpdateBasicInfo.setCreateddate(new Date());
		
		StringBuffer sb = new StringBuffer();
		if (workEnvironmentModel.getSelected_otherRequestIds().length > 0) {
			for (String selectedReqId : workEnvironmentModel.getSelected_otherRequestIds()) {
	    		sb.append(selectedReqId + ",");
			}
			
			toUpdateBasicInfo.setOtherreq(sb.substring(0, sb.lastIndexOf(",")));
		}else {
			toUpdateBasicInfo.setOtherreq(workEnvironmentModel.getOtherRequest());
		}
		
    	System.out.println("recordId === > " +toUpdateBasicInfo.getId());
    	System.out.println("wk Id ===> "+ toUpdateBasicInfo.getWorkenvironment());
    	System.out.println("other WK === >" + toUpdateBasicInfo.getOtherworkenvironment());
    	System.out.println("selected_mainRequestId === > " +toUpdateBasicInfo.getMainreq());
    	System.out.println("other Req === >" + toUpdateBasicInfo.getOtherreq());
    	
		return this.basicInfoDao.updateBasicInfoById(toUpdateBasicInfo);
	}

}
