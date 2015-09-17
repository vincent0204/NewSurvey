package com.mewe.model;

import java.util.Map;

public class WorkEnvironmentModel {
	private int recordId;
	
	private String selected_workEnvironmentId;
	
	private String otherWorkEnvironment;
	
	private String selected_mainRequestId;
	
	private String[] selected_otherRequestIds;
	
	private String otherRequest;
	
	private Map<String, String> workEnvironmentMap;
	
	private Map<String, String> mainRequestMap;
	
	private Map<String, String> otherRequestMap;
	
	
	
	public String getOtherWorkEnvironment() {
		return otherWorkEnvironment;
	}
	public void setOtherWorkEnvironment(String otherWorkEnvironment) {
		this.otherWorkEnvironment = otherWorkEnvironment;
	}
	public String getOtherRequest() {
		return otherRequest;
	}
	public void setOtherRequest(String otherRequest) {
		this.otherRequest = otherRequest;
	}
	public int getRecordId() {
		return recordId;
	}
	public void setRecordId(int recordId) {
		this.recordId = recordId;
	}
	public Map<String, String> getMainRequestMap() {
		return mainRequestMap;
	}
	public void setMainRequestMap(Map<String, String> mainRequestMap) {
		this.mainRequestMap = mainRequestMap;
	}
	public Map<String, String> getOtherRequestMap() {
		return otherRequestMap;
	}
	public void setOtherRequestMap(Map<String, String> otherRequestMap) {
		this.otherRequestMap = otherRequestMap;
	}
	public String[] getSelected_otherRequestIds() {
		return selected_otherRequestIds;
	}
	public void setSelected_otherRequestIds(String[] selected_otherRequestIds) {
		this.selected_otherRequestIds = selected_otherRequestIds;
	}
	public String getSelected_workEnvironmentId() {
		return selected_workEnvironmentId;
	}
	public void setSelected_workEnvironmentId(String selected_workEnvironmentId) {
		this.selected_workEnvironmentId = selected_workEnvironmentId;
	}
	public String getSelected_mainRequestId() {
		return selected_mainRequestId;
	}
	public void setSelected_mainRequestId(String selected_mainRequestId) {
		this.selected_mainRequestId = selected_mainRequestId;
	}
	public Map<String, String> getWorkEnvironmentMap() {
		return workEnvironmentMap;
	}
	public void setWorkEnvironmentMap(Map<String, String> workEnvironmentMap) {
		this.workEnvironmentMap = workEnvironmentMap;
	}
	
}
