package com.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.po.MyEnterprise;

public interface EnterpriseService {
    public List<MyEnterprise> selectAllinfo();

    public boolean selectEnterpriseByphone(Map<String, Object> param, HttpServletRequest request);
}
