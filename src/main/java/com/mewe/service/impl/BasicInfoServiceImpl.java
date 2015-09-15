package com.mewe.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mewe.dao.IBasicInfoDao;
import com.mewe.pojo.BasicInfo;
import com.mewe.service.IBasicInfoService;

@Service("basicInfoService")
public class BasicInfoServiceImpl implements IBasicInfoService {
	@Resource
	private IBasicInfoDao basicInfoDao;
	
	public BasicInfo selectByPrimaryKey(String id) {
		return this.basicInfoDao.selectByPrimaryKey(id);
	}
	
	public int saveFirstPage(BasicInfo basicInfo) {
		return this.basicInfoDao.insert(basicInfo); 
	}

	public List<String> queryAllWorkEnvironments() {
		return this.basicInfoDao.selectAllWorkEnvironments();
	}

}
