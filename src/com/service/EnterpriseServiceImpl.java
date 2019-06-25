package com.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.EnterpriseDao;
import com.dao.EnterpriseInfoDao;
import com.po.MyEnterprise;
import com.po.MyEnterpriseInfo;

@Service("enterpriseService")
@Transactional
public class EnterpriseServiceImpl implements EnterpriseService {
    @Autowired
    private EnterpriseDao dao;
    @Autowired
    private EnterpriseInfoDao infodao;
    
    @Override
    public List<MyEnterprise> selectAllinfo() {
        return dao.selectAllinfo();
    }

    @Override
    public boolean selectEnterpriseByphone(Map<String, Object> param, HttpServletRequest request) {
        try {
            System.out.println("map:" + param.get("phone") + "--------------" + param.get("password"));
            MyEnterprise enterprise = dao.selectEnterpriseByphone(param);
            MyEnterpriseInfo info = infodao.selectComapnyByid(Integer.parseInt(enterprise.getCompanyid()));
            HttpSession session = request.getSession();
            session.setAttribute("userId", enterprise.getId());
            session.setAttribute("companyId", enterprise.getCompanyid());
            session.setAttribute("companyName", info.getShotName());
            session.setAttribute("user", enterprise.getName());
//			System.out.println("demo");
            //出现异常是当对不存在的enterprise取数据的时候 ，从数据库中获取数据的时候没有产生异常
            System.out.println(enterprise.getPhone() + "----------" + enterprise.getPassword());
            return true;
        } catch (Exception e) {
            return false;

        }
    }
}
