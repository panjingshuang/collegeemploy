package com.dao;

import java.util.List;

import com.po.MyEnterpriseInfo;
import com.po.MyIndustry;
import com.po.MyJobtype;

public interface EnterpriseInfoDao {
    public List<MyEnterpriseInfo> selectAllinfo();
    public MyEnterpriseInfo selectComapnyByid(int id);
    public  List<MyJobtype> getCompanyList();
    public List<MyIndustry> getIndustryList();
}
