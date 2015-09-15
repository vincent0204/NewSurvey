package com.mewe.service;

import java.util.List;

import com.mewe.pojo.PicklistRequest;

public interface IRequestService {

	List<PicklistRequest> getMainRequest();
	
	List<PicklistRequest> getMainSubRequest(String mainId);
}
