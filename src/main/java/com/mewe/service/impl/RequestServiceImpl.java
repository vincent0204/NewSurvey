package com.mewe.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mewe.dao.IPicklistRequestDao;
import com.mewe.pojo.PicklistRequest;
import com.mewe.service.IRequestService;
@Service("picklistRequestService")
public class RequestServiceImpl implements IRequestService {

	@Resource
	private IPicklistRequestDao picklistRequestDao;
	
	public Map<String, String> queryAllMainRequestMap() {
		Map<String, String> mainRequestMap = new HashMap<String, String>();
		
		for (PicklistRequest plTemp : this.picklistRequestDao.selectAllMainRequests()) {
			mainRequestMap.put(plTemp.getId(), plTemp.getLabel());
		}
		
		System.out.println("queryAllMainRequestMap==>" + mainRequestMap.size());
		return mainRequestMap;
	}

	public Map<String, String> queryAllSubRequestMap(String mainRequestId) {
		Map<String, String> otherRequestMap = new HashMap<String, String>();
		
		for (PicklistRequest plTemp : this.picklistRequestDao.selectAllOtherRequestsByMainReqId(mainRequestId)) {
			otherRequestMap.put(plTemp.getId(), plTemp.getLabel());
		}
		
		System.out.println("otherRequestMap==>" + otherRequestMap.size());
		return otherRequestMap;
	}


	public Map<String, String> queryAllOtherRequestMap() {
		
		Map<String, String> allOtherRequestMap = new HashMap<String, String>();
		
		for (PicklistRequest plTemp : this.picklistRequestDao.selectAllOtherRequests()) {
			allOtherRequestMap.put(plTemp.getId(), plTemp.getLabel());
		}
		
		System.out.println("queryAllOtherRequestMap==>" + allOtherRequestMap.size());
		return allOtherRequestMap;
	}
}
