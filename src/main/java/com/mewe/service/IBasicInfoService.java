package com.mewe.service;

import javax.servlet.http.HttpServletRequest;

import com.mewe.model.WorkEnvironmentModel;
import com.mewe.pojo.BasicInfo;

public interface IBasicInfoService {
	
	BasicInfo selectByPrimaryKey(String id);
	
	int saveFirstPage(HttpServletRequest request);
	
	int saveSecondPage(WorkEnvironmentModel workEnvironmentModel);
	
}
