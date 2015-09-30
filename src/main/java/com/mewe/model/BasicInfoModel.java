package com.mewe.model;

import java.util.Map;

public class BasicInfoModel {
	private int recordId;
	
	private String userName;
	
	private String phone;
	
	private String sex;
	
	private int age;
	
	private String height;
	
	private String weight;
	
	private String selected_workEnvironmentId;
	
	private String otherWorkEnvironment;
	
	private String selected_mainRequestId;
	
	private String selected_mainSubRequestId;
	
	private String mainSubRequestOther;
	
	private String[] selected_otherSubRequestIds;
	
	private String selected_otherRequestId;
	
	private String otherSubRequestOther;
	
	private Map<String, String> workEnvironmentMap;
	
	private Map<String, String> mainRequestMap;
	
	private Map<String, String> otherRequestMap;
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getSelected_otherRequestId() {
		return selected_otherRequestId;
	}
	public void setSelected_otherRequestId(String selected_otherRequestId) {
		this.selected_otherRequestId = selected_otherRequestId;
	}
	public String getSelected_mainSubRequestId() {
		return selected_mainSubRequestId;
	}
	public void setSelected_mainSubRequestId(String selected_mainSubRequestId) {
		this.selected_mainSubRequestId = selected_mainSubRequestId;
	}
	public String getMainSubRequestOther() {
		return mainSubRequestOther;
	}
	public void setMainSubRequestOther(String mainSubRequestOther) {
		this.mainSubRequestOther = mainSubRequestOther;
	}
	public String getOtherWorkEnvironment() {
		return otherWorkEnvironment;
	}
	public void setOtherWorkEnvironment(String otherWorkEnvironment) {
		this.otherWorkEnvironment = otherWorkEnvironment;
	}
	public String getOtherSubRequestOther() {
		return otherSubRequestOther;
	}
	public void setOtherSubRequestOther(String otherSubRequestOther) {
		this.otherSubRequestOther = otherSubRequestOther;
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
	public String[] getSelected_otherSubRequestIds() {
		return selected_otherSubRequestIds;
	}
	public void setSelected_otherSubRequestIds(String[] selected_otherSubRequestIds) {
		this.selected_otherSubRequestIds = selected_otherSubRequestIds;
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
