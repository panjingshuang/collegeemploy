package com.dao;

import java.util.List;
import java.util.Map;

import com.po.MyApplyJob;


public interface ApplyJobDao {
    public int selectCountbyids(Map<String, Object> map);

    public void insertinfo(Map<String, Object> map);

    List<Integer> selectJobIdByStatus(Map<String, Object> map);

    public Integer selectJobNumberByjobid(int jobid);

    public void updateStatus(MyApplyJob myApplyJob);
}
