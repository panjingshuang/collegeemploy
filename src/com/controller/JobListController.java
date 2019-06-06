package com.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.JobListDao;
import com.po.MyJobList;


@Controller
@RequestMapping("/job")
public class JobListController {
	@Autowired
	private JobListDao jobListDao;
	@RequestMapping("/see")
	public String see(HttpServletRequest request,Model model) {
		List<MyJobList> myJobLists = jobListDao.limitJobAndCompany();
		model.addAttribute("joblists", myJobLists);
		return "job";
	}
	
	//想要实现分页的效果
//	@RequestMapping("/list")
//	public String list(HttpServletRequest request,Model model) {
//		// 通过前端的ajax获取分页的数据之后将数据传递给数据库去出现相应的数据
//		int limit = Integer.parseInt(request.getParameter("limit"));
//		List<MyJobList> myJobLists = jobListDao.limitJobAndCompany(limit);
//		model.addAttribute("joblists", myJobLists);
//		System.out.println(myJobLists);
//		return "job";
//	}
//	@RequestMapping("/number")
//	public String number(HttpServletRequest request,Model model) {
//		// 将所有数据的个数传递个前端从而显示相应的分页个数
//		int limit = Integer.parseInt(request.getParameter("limit"));
//		List<MyJobList> myJobLists = jobListDao.limitJobAndCompany(limit);
//		model.addAttribute("joblists", myJobLists);
//		System.out.println(myJobLists);
//		return "job";
//	}
//	@RequestMapping("/getnumber")
//	public String getALlNumber(HttpServletRequest request,Model model) {
//		//获取数据库中所有所有个数z'z
//		return "job";
//	}
	
	
	@RequestMapping(value= "/{job_id}/detail",method=RequestMethod.GET)
	public String getALlNumber(@PathVariable String job_id,Model model) {
		//获取数据库中所有所有个数z'z
		int id = Integer.parseInt(job_id);
		MyJobList myJobList = jobListDao.selectJobinfoByid(id);
		String pre = myJobList.getMainContent();
		String pre1 = pre.replaceAll("\n","<br/>");
		model.addAttribute("myJobListinfo", myJobList);
		model.addAttribute("content",pre1 );
		System.out.println(job_id);
		return "detail";
	}
	
}
