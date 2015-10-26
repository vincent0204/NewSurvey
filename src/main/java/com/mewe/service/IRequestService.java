package com.mewe.service;

import java.util.Map;

public interface IRequestService {

	Map<String, String> queryAllMainRequestMap();
	
	Map<String, String> queryAllSubRequestMap(String mainRequestId);
	
    Map<String, String> queryAllOtherRequestMap();
}
