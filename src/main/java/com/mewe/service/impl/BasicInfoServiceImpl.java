package com.mewe.service.impl;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.mewe.dao.IBasicInfoDao;
import com.mewe.model.BasicInfoModel;
import com.mewe.pojo.BasicInfo;
import com.mewe.service.IBasicInfoService;
import com.sun.swing.internal.plaf.basic.resources.basic;

@Service("basicInfoService")
public class BasicInfoServiceImpl implements IBasicInfoService {
	@Resource
	private IBasicInfoDao basicInfoDao;
	
	public BasicInfo selectByPrimaryKey(String id) {
		return this.basicInfoDao.selectByPrimaryKey(id);
	}
	
	public int saveBasicInfoRecord(BasicInfoModel basicInfoModel) {
		BasicInfo basicInfo = new BasicInfo();
		basicInfo.setUsername(basicInfoModel.getUserName());
		basicInfo.setPhone(basicInfoModel.getPhone());
		basicInfo.setSex(basicInfoModel.getSex());
		basicInfo.setAge(basicInfoModel.getAge());
		basicInfo.setHeight(basicInfoModel.getHeight());
		basicInfo.setWeight(basicInfoModel.getWeight());
		
		basicInfo.setWorkenvironment(basicInfoModel.getSelected_workEnvironmentId());
		basicInfo.setOtherworkenvironment(basicInfoModel.getOtherWorkEnvironment());
		
		basicInfo.setMainreq(basicInfoModel.getSelected_mainRequestId());
		basicInfo.setMainsubreq(basicInfoModel.getSelected_mainSubRequestId());
		
		basicInfo.setOtherreq(basicInfoModel.getSelected_otherRequestId());
		basicInfo.setIsactive("1");
		basicInfo.setCreatedby("admin");
		basicInfo.setCreateddate(new Date());
		
		StringBuffer sb = new StringBuffer();
		if (basicInfoModel.getSelected_otherSubRequestIds().length > 0) {
			for (String selectedReqId : basicInfoModel.getSelected_otherSubRequestIds()) {
	    		sb.append(selectedReqId + ",");
			}
			basicInfo.setOthersubreq(sb.substring(0, sb.lastIndexOf(",")));
		}else {
			basicInfo.setOthersubreq(basicInfoModel.getOtherSubRequestOther());
		}
		
    	System.out.println("UserName === > " +basicInfo.getUsername());
    	System.out.println("Phone === > " +basicInfo.getPhone());
    	System.out.println("Sex === > " +basicInfo.getSex());
    	System.out.println("Age === > " +basicInfo.getAge());
    	System.out.println("Height === > " +basicInfo.getHeight());
    	System.out.println("Weight === > " +basicInfo.getWeight());
    	
    	System.out.println("WorkEnvironmentId ===> "+ basicInfo.getWorkenvironment());
    	System.out.println("OtherWorkEnvironment ===> "+ basicInfo.getOtherworkenvironment());
    	
    	System.out.println("MainRequestId === >" + basicInfo.getMainreq());
    	System.out.println("MainSubRequestOther === >" + basicInfo.getMainsubreq());
    	
    	System.out.println("OtherRequestId === >" + basicInfo.getOtherreq());
    	System.out.println("OtherSubRequestOther === >" + basicInfo.getOthersubreq());
    	
    	this.basicInfoDao.insert(basicInfo);
		
		return this.basicInfoDao.selectInsertedRecordId();//Record Id
	}

}
