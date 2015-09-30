package com.mewe.service;

import com.mewe.model.BasicInfoModel;
import com.mewe.pojo.BasicInfo;

public interface IBasicInfoService {
	
	BasicInfo selectByPrimaryKey(String id);
	
	int saveBasicInfoRecord(BasicInfoModel basicInfoModel);
	
}
