package com.controller;

import java.util.HashMap;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dao.CollegeDao;
import com.dao.EducationDao;
import com.po.MyCollege;
import com.po.MyEducation;
import com.service.CollegeService;


@Controller
@RequestMapping("/college")
public class CollegeController {
	@Autowired
	private CollegeService collegeService;
	@Autowired
	private CollegeDao dao;
	@Autowired
	private EducationDao educationDao;
	
	@RequestMapping("/login")
	public String collegeLogin () {
		return "collegeLogin";
	}
	@RequestMapping("/verificationLogin")
	public String verificationLogin(HttpServletRequest request,Model model) {
			String phone = request.getParameter("college");
			String password = request.getParameter("password");
			Map<String, Object> map  = new HashMap<>();
			map.put("phone", phone);
			map.put("password",password);
			if(collegeService.selectCollegeByphone(map,model,request)) {
				return "person_index";
			}else {
				model.addAttribute("error", "密码或用户名错误");
				return "collegeLogin";
			}
	
	}
	//基本信息放入数据库并返回数据给前端
	@RequestMapping("/updatebaseinfo")
	public  Map<String, Object> insertbaseinfo(HttpServletRequest request,Model model) {
		String nation = request.getParameter("nation");
		String email = request.getParameter("email");
		String hometown = request.getParameter("hometown");
		Map<String,Object> resultMap = new HashMap<String, Object>();
		System.out.println(email);
		MyCollege myCollege = new MyCollege();
		HttpSession session =  request.getSession();
		String phone = (String) session.getAttribute("phone");
		myCollege.setEmail(email);
		myCollege.setHometown(hometown);
		myCollege.setNation(nation);
		myCollege.setPhone(phone);
		dao.updatebaseinfo(myCollege);
		resultMap.put("college",myCollege);
		return  resultMap;
	}
	
	//添加求职期望
	@RequestMapping("/updatejob_expectation")
	public  Map<String, Object> insertJob_expection(HttpServletRequest request,Model model) {
		String work_loaction = request.getParameter("work_loaction");
		String distury = request.getParameter("distury");
		String position = request.getParameter("position");
		String salary = request.getParameter("salary");
		Map<String,Object> resultMap = new HashMap<String, Object>();
		MyCollege myCollege = new MyCollege();
		HttpSession session =  request.getSession();
		String phone = (String) session.getAttribute("phone");
		myCollege.setIndustry(distury);
		myCollege.setPosition(position);
		myCollege.setSalary(salary);
		myCollege.setPhone(phone);
		myCollege.setWorklocation(work_loaction);
		dao.updatejob_expectation(myCollege);
		return  resultMap;
		
	}

	//添加自我评价
	@RequestMapping("/updateself_evaluation")
	public  Map<String, Object> insertself_evaluation(HttpServletRequest request,Model model) {
		String self = request.getParameter("self");
		Map<String,Object> resultMap = new HashMap<String, Object>();
		MyCollege myCollege = new MyCollege();
		HttpSession session =  request.getSession();
		String phone = (String) session.getAttribute("phone");
		
		myCollege.setPhone(phone);
		myCollege.setSelfevaluation(self);
		dao.updateself_evaluation(myCollege);
		return  resultMap;
	}
	//添加教育经历
	@RequestMapping("/updateeducational")
	public  Map<String, Object> inserteducational(HttpServletRequest request,Model model) {
		String school = request.getParameter("school");
		String department = request.getParameter("department");
		String education = request.getParameter("education");
		String major = request.getParameter("major");
		String starttime = request.getParameter("starttime");
		String endtime = request.getParameter("endtime");


		MyEducation myEducation = new MyEducation();
		Map<String,Object> resultMap = new HashMap<String, Object>();
		HttpSession session =  request.getSession();
		String phone = (String) session.getAttribute("phone");
			System.out.println(phone);
		int id = (int) session.getAttribute("collegeId");
		System.out.println(id);
		myEducation.setSchool(school);
		myEducation.setEducation(education);
		myEducation.setMajor(major);
		myEducation.setStarttime(starttime);
		myEducation.setEndtime(endtime);
		myEducation.setCollege_id(id);
		myEducation.setDepartment(department);

		educationDao.insertinfo(myEducation);
		return  resultMap;
	}
	@RequestMapping("/see")
	public String see(HttpServletRequest request,Model model) {
		return "job";
	}
	


}
