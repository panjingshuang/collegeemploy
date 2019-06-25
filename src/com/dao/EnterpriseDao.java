package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import com.po.MyEnterprise;

@Repository("enterpriseDao")
@Mapper
public interface EnterpriseDao {
    public List<MyEnterprise> selectAllinfo();

    public MyEnterprise selectEnterpriseByphone(Map<String, Object> param);
}
