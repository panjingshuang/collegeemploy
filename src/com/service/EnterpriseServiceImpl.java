package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.EnterpriseDao;
import com.po.MyEnterprise;

@Service("enterpriseService")
@Transactional
public class EnterpriseServiceImpl implements EnterpriseService {
	@Autowired
	private EnterpriseDao dao;
	@Override
	public List<MyEnterprise> selectAllinfo(){
		return dao.selectAllinfo();
	}
	@Override
	public boolean selectEnterpriseByphone(Map<String, Object> param) {
		try{
			System.out.println("map:"+param.get("phone")+"--------------"+param.get("password"));
			MyEnterprise  enterprise = dao.selectEnterpriseByphone(param);
//			System.out.println("demo");
			//出现异常是当对不存在的enterprise取数据的时候 ，从数据库中获取数据的时候没有产生异常
			System.out.println(enterprise.getPhone()+"----------"+enterprise.getPassword());
			return	true;
		}catch (Exception e) {
			return false;
			
		}
	}
}
