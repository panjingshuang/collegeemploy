package com.dao;

import java.util.List;

import com.po.MyJobList;

public interface JobListDao {
	public List<MyJobList> selectAllinfo();
	public List<MyJobList> limitJobAndCompany();
	public int selectNumber(String select);
	public List<MyJobList> selectAllinfoByType(String type);
	public MyJobList selectJobinfoByid(int i);
}
