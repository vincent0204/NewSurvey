package com.mewe.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mewe.dao.IConclusionDao;
import com.mewe.pojo.Conclusion;
import com.mewe.service.IConclusionService;

@Service("conclusionService")
public class ConclusionServiceImpl implements IConclusionService {
	
	@Resource
	private IConclusionDao conclusionDao;

	public Conclusion selectBySectionId(String sectionId) {
		// TODO Auto-generated method stub
		 return this.conclusionDao.selectBySectionId(sectionId);
	
	}
}
