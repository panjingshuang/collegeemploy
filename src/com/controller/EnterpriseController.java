package com.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.ApplyJobDao;
import com.dao.CollegeDao;
import com.dao.EnterpriseInfoDao;
import com.dao.JobListDao;
import com.po.MyApplyJob;
import com.po.MyCollege;
import com.po.MyEnterpriseInfo;
import com.po.MyIndustry;
import com.po.MyJobAndCollege;
import com.po.MyJobtype;
import com.service.EnterpriseService;
import com.sun.org.apache.bcel.internal.generic.NEW;


@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {
    @Autowired
//	private EnterpriseDao enterpriseDao;
    private EnterpriseService enterServie;
    @Autowired
    private JobListDao jobdao;
    @Autowired
    private ApplyJobDao applydao;
    @Autowired
    private CollegeDao collegedao;
    @Autowired
    private EnterpriseInfoDao enterdao;
    //登陆
    @RequestMapping("/login")
    public String login() {
        return "enterpriseLogin";
    }

    //登陆到主页面前
    @RequestMapping("/verificationLogin")
    public String verificationLogin(HttpServletRequest request, Model model) {
        String phone = request.getParameter("college");
        String password = request.getParameter("password");
        Map<String, Object> map = new HashMap<>();
        map.put("phone", phone);
        map.put("password", password);
        if (enterServie.selectEnterpriseByphone(map, request)) {
            //根据公司id值查询职位 然后根据职位 来查询求职者
//			//1.根据公司id查询职位id集合
//			HttpSession session = request.getSession();
//			int companyid =Integer.parseInt((String) session.getAttribute("companyId"));
//			System.out.println(companyid);
//			List<Integer> joblist = jobdao.selectidByCoropid(companyid);
//			List<MyJobAndCollege> myJobAndColleges = new ArrayList<MyJobAndCollege>();
//			//2.根据职位来查找用户的id值
//			for(int i=0;i<joblist.size();i++) {
//				//根据查询到的职位的id值 去applyjob表中查询该jobid值是否存在 
//				//如果存在 
//				int jobid_count = applydao.selectJobNumberByjobid(joblist.get(i));
//				if(jobid_count>0){
//					//就获取当前职位的信息和申请人的信息 一个职位可能会对应对个申请人 但此处将一对多变成了一对一
//					Map<String,Object>	map1 = new HashMap<>();
//					map1.put("jobid",joblist.get(i) );
//					map1.put("status", 1);
//					List<MyJobAndCollege> myJobAndCollege  = jobdao.getJobAndCollege(map1);
//					myJobAndColleges.addAll(myJobAndCollege);//列表的合并 合并之后的数据在myjobAndColleges中 不会 新生成一个数组
//				}
//				//如果不存在，忽略不考虑
//			}
//			
//			model.addAttribute("myJobAndColleges", myJobAndColleges);
            //当前用户的职位和用户的信息
        	//获取当当前用户所在公司的公司名等数据
        	
            return "companyIndex";
        } else {
            model.addAttribute("error", "密码或用户名错误");
            return "enterpriseLogin";
        }


    }

    //主页中点击了标签之后获取后端数据的过程
    @RequestMapping("/applycollection/status")
    @ResponseBody
    public Map<String, Object> applycollection(HttpServletRequest request, Model model, String status) {
        Map<String, Object> map = new HashMap<>();    //提交给前端的数据
        //根据当前的公司id值和状态值可以将数据获取出来
        HttpSession session = request.getSession();
        int companyid = Integer.parseInt((String) session.getAttribute("companyId"));
        List<Integer> joblist = jobdao.selectidByCoropid(companyid);
        List<MyJobAndCollege> myJobAndColleges = new ArrayList<MyJobAndCollege>();

        for (int i = 0; i < joblist.size(); i++) {
            //根据查询到的职位的id值 去applyjob表中查询该jobid值是否存在
            //如果存在
            int jobid_count = applydao.selectJobNumberByjobid(joblist.get(i));

            if (jobid_count > 0) {
                //就获取当前职位的信息和申请人的信息 一个职位可能会对应对个申请人 但此处将一对多变成了一对一
                Map<String, Object> map1 = new HashMap<>();
                map1.put("jobid", joblist.get(i));
                map1.put("status", Integer.parseInt(status));
                //根据状态和职位查询到的数据
                List<MyJobAndCollege> myJobAndCollege = jobdao.getJobAndCollege(map1);

                myJobAndColleges.addAll(myJobAndCollege);//列表的合并 合并之后的数据在myjobAndColleges中 不会 新生成一个数组
            }
            //如果不存在，忽略不考虑
        }
        map.put("content", myJobAndColleges);
        return map;
    }


    //直接查询申请人的信息
    @RequestMapping("/getcollege")
    @ResponseBody
    public Map<String, Object> getcollegeinfo(HttpServletRequest request, String collegeid) {
        Map<String, Object> map = new HashMap<>();
        MyCollege college = collegedao.selectAllinfoByid(Integer.parseInt(collegeid));
        map.put("college", college);
        return map;
    }

    //点击不合格时的事件
    //根据前端传来的申请人和职位的id值和当前要修改的状态值 修改数据
    @RequestMapping("/updateStatus")
    @ResponseBody
    public Map<String, Object> updateStatus(HttpServletRequest request, String collegeid, String jobid, String status) {
        Map<String, Object> map = new HashMap<>();
        MyApplyJob myApplyJob = new MyApplyJob();
        myApplyJob.setCollegeid(Integer.parseInt(collegeid));
        myApplyJob.setJobid(Integer.parseInt(jobid));
        myApplyJob.setStatus(Integer.parseInt(status));
        try {
            applydao.updateStatus(myApplyJob);
            map.put("msg", "success");
        } catch (Exception e) {
            // TODO: handle exception
            map.put("msg", "fail");
        }
        return map;
    }
    //企业注册
    @RequestMapping("/coampanyRegister")
    public String companyReigster2(Model model) {
    	//将获取数据
    	//获取行业的列表信息
    	List<MyJobtype> jobtypes = enterdao.getCompanyList();
    	model.addAttribute("jobtypes", jobtypes);
    	//获取公司类型的列表信息
    	List<MyIndustry> industries = enterdao.getIndustryList();
    	model.addAttribute("industries", industries);
    	model.addAttribute("myCompany", new MyEnterpriseInfo());
        return "companyRegister2";
    }
    //企业注册验证
    @RequestMapping("/CheckcoampanyRegister")
    public String companyReigsterCheck(HttpServletRequest request,Model model) {
    	//获取前端传入的数据
    	
    	//将数据插入到数据库中
    	//插入成功就返回到login页面
    	//插入不成功就返回到register页面进行错误提示
        return "redirct:login";
    }
}
