package com.dao;

import java.util.List;
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
}
