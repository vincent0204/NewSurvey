package com.mewe.dao;

import java.util.List;

import com.mewe.pojo.PicklistRequest;
import com.mewe.pojo.WorkEnvironment;


public interface IWorkEnvironmentDao {
//    int deleteByPrimaryKey(String id);
//
//    int insert(WorkEnvironment record);
//
//    int insertSelective(WorkEnvironment record);
//
//    WorkEnvironment selectByPrimaryKey(String id);
//
//    int updateByPrimaryKeySelective(WorkEnvironment record);
//
//    int updateByPrimaryKey(WorkEnvironment record);
	
	List<WorkEnvironment> selectAllWorkEnvironments();
	
	List<PicklistRequest> selectAllMainRequests();
	
}