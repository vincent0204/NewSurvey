package com.mewe.service;

import com.mewe.pojo.Conclusion;

public interface IConclusionService {
    
	Conclusion selectBySectionId(String sectionId);
}
