package com.mewe.dao;

import java.util.List;

import com.mewe.pojo.PicklistRequest;


public interface IPicklistRequestDao {
	List<PicklistRequest> selectAllMainRequests();
	
	List<PicklistRequest> selectAllOtherRequestsByMainReqId(String mianRequestId);
}