package com.po;

public class MyJobList {
	private int id;
	private String jobName;
	private String degreeName;
	private String corpid;
	private String salary;
	private String areaCodeName;
	private String major;
	private String mainContent;
	private MyEnterpriseInfo myEnterpriseInfo;
	
	public MyEnterpriseInfo getMyEnterpriseInfo() {
		return myEnterpriseInfo;
	}
	public void setMyEnterpriseInfo(MyEnterpriseInfo myEnterpriseInfo) {
		this.myEnterpriseInfo = myEnterpriseInfo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getDegreeName() {
		return degreeName;
	}
	public void setDegreeName(String degreeName) {
		this.degreeName = degreeName;
	}
	public String getCorpid() {
		return corpid;
	}
	public void setCorpid(String corpid) {
		this.corpid = corpid;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getAreaCodeName() {
		return areaCodeName;
	}
	public void setAreaCodeName(String areaCodeName) {
		this.areaCodeName = areaCodeName;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getMainContent() {
		return mainContent;
	}
	public void setMainContent(String mainContent) {
		this.mainContent = mainContent;
	}

}
