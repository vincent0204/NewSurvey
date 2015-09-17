package com.mewe.service.impl;

import java.util.HashMap;
import java.util.Map; 

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mewe.dao.IWorkEnvironmentDao;
import com.mewe.pojo.WorkEnvironment;
import com.mewe.service.IWorkEnvironmentService;
@Service("WorkEnvironmentService")
public class WorkEnvironmentImpl implements IWorkEnvironmentService {
	
	@Resource
	private IWorkEnvironmentDao workEnvironmentDao;
	
	public Map<String, String> queryAllWorkEnvironmentsByMap() {
		Map<String, String> workEnvironmentMap = new HashMap<String, String>();
		for (WorkEnvironment weTemp : this.workEnvironmentDao.selectAllWorkEnvironments()) {
			workEnvironmentMap.put(weTemp.getId(), weTemp.getLabel());
		}
		return workEnvironmentMap;
	}

	public Map<String, String> queryAllMainRequestMap() {
		
		return null;
	}

}
