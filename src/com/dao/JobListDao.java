package com.dao;

import java.util.List;
<<<<<<< HEAD
import java.util.Map;

import com.po.MyJobAndCollege;
import com.po.MyJobList;


public interface JobListDao {
    public List<MyJobList> selectAllinfo();

    public List<MyJobList> limitJobAndCompany();

    public int selectNumber(String select);

    public List<MyJobList> selectAllinfoByType(String type);

    public MyJobList selectJobinfoByid(int i);

    public List<MyJobList> selectJobinfoBycorpid(int id);

    public Integer selectCountById(int id);

    public List<Integer> selectidByCoropid(int id);

    public List<MyJobAndCollege> getJobAndCollege(Map<String, Object> map);
=======

import com.po.MyJobList;

public interface JobListDao {
	public List<MyJobList> selectAllinfo();
	public List<MyJobList> limitJobAndCompany();
	public int selectNumber(String select);
	public List<MyJobList> selectAllinfoByType(String type);
	public MyJobList selectJobinfoByid(int i);
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
}
