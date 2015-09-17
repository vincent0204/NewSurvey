package com.mewe.dao;

import java.util.List;

import com.mewe.pojo.BasicInfo;

public interface IBasicInfoDao {
	int insert(BasicInfo record);
	
	int selectInsertedRecordId();

//	int insertSelective(BasicInfo record);
//
//	int deleteById(String id);
//
//	int updateByPrimaryKeySelective(BasicInfo record);
//	
//	int updateByPrimaryKey(BasicInfo record);
	
    BasicInfo selectByPrimaryKey(String id);
    
    int updateBasicInfoById(BasicInfo record);

}