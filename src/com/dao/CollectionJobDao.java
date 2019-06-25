package com.dao;

import java.util.List;
import java.util.Map;

import com.po.MyCollectionJob;

public interface CollectionJobDao {
    public void insertinfo(MyCollectionJob myCollectionJob);

    public int selectCountbyids(Map<String, Object> map);

    public List<Integer> selectListByCid(int id);

    public void deleteJobById(Map<String, Object> map);
}
