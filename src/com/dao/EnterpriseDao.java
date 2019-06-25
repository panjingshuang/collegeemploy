package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import com.po.MyEnterprise;

@Repository("enterpriseDao")
@Mapper
public interface EnterpriseDao {
<<<<<<< HEAD
    public List<MyEnterprise> selectAllinfo();

    public MyEnterprise selectEnterpriseByphone(Map<String, Object> param);
=======
	public List<MyEnterprise> selectAllinfo();

	public MyEnterprise selectEnterpriseByphone(Map<String, Object> param);
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
}
