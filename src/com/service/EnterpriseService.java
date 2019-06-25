package com.service;

import java.util.List;
import java.util.Map;

<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;

import com.po.MyEnterprise;

public interface EnterpriseService {
    public List<MyEnterprise> selectAllinfo();

    public boolean selectEnterpriseByphone(Map<String, Object> param, HttpServletRequest request);
=======
import com.po.MyEnterprise;

public interface EnterpriseService {
	public List<MyEnterprise> selectAllinfo();
	public boolean selectEnterpriseByphone(Map<String, Object> param);
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
}
