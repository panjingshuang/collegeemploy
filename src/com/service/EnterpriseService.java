package com.service;

import java.util.List;
import java.util.Map;

import com.po.MyEnterprise;

public interface EnterpriseService {
	public List<MyEnterprise> selectAllinfo();
	public boolean selectEnterpriseByphone(Map<String, Object> param);
}
