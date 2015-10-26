package com.mewe.dao;

import com.mewe.pojo.Conclusion;


public interface IConclusionDao {
//    int deleteByPrimaryKey(String id);
//    
//    int updateByPrimaryKey(Conclusion record);
	
	Conclusion selectBySectionId(String sectionId);
}