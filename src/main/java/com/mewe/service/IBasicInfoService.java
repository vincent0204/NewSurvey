package com.mewe.service;

import com.mewe.pojo.BasicInfo;

public interface IBasicInfoService {
	
	BasicInfo selectByPrimaryKey(String id);
	
	Boolean saveFirstPage(BasicInfo basicInfo);
}
