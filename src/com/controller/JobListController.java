package com.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

<<<<<<< HEAD

=======
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

<<<<<<< HEAD
import com.dao.EnterpriseInfoDao;
import com.dao.JobListDao;
import com.po.MyEnterpriseInfo;
=======
import com.dao.JobListDao;
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
import com.po.MyJobList;


@Controller
@RequestMapping("/job")
public class JobListController {
<<<<<<< HEAD
    @Autowired
    private JobListDao jobListDao;

    @Autowired
    private EnterpriseInfoDao enterinfo;

    @RequestMapping("/see")
    public String see(HttpServletRequest request, Model model) {
        List<MyJobList> myJobLists = jobListDao.limitJobAndCompany();
        model.addAttribute("joblists", myJobLists);
        return "job";
    }

    @RequestMapping("/companyList")
    public String compangList(HttpServletRequest request, Model model) {
        List<MyEnterpriseInfo> enterpriseInfos = enterinfo.selectAllinfo();
        model.addAttribute("companyList", enterpriseInfos);
        return "companyList";
    }

    //想要实现分页的效果
=======
	@Autowired
	private JobListDao jobListDao;
	@RequestMapping("/see")
	public String see(HttpServletRequest request,Model model) {
		List<MyJobList> myJobLists = jobListDao.limitJobAndCompany();
		model.addAttribute("joblists", myJobLists);
		return "job";
	}
	
	//想要实现分页的效果
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
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
<<<<<<< HEAD


    @RequestMapping(value = "/{job_id}/detail", method = RequestMethod.GET)
    public String getALlNumber(@PathVariable String job_id, Model model) {
        //获取数据库中所有所有个数z'z
        int id = Integer.parseInt(job_id);
        MyJobList myJobList = jobListDao.selectJobinfoByid(id);
        String pre = myJobList.getMainContent();
        String pre1 = pre.replaceAll("\n", "<br/>");
        model.addAttribute("myJobListinfo", myJobList);
        model.addAttribute("content", pre1);
        System.out.println(job_id);
        return "detail";
    }

    @RequestMapping(value = "/{company_id}/Companydetail", method = RequestMethod.GET)
    public String getCompay(@PathVariable String company_id, Model model) {
        //获取公司的id值
        System.out.println(company_id);
        int id = Integer.parseInt(company_id);

        //将id值为id的公司数据取出放入到model中,将corpid为id的job数据取出，并将数据放入到model中
        //job中已存在公司的数据，只需将job的数据放入到model中就可以了
        List<MyJobList> myJobList = jobListDao.selectJobinfoBycorpid(id);
        MyEnterpriseInfo myEnterpriseInfo = enterinfo.selectComapnyByid(id);
        model.addAttribute("myjoblist", myJobList);
        model.addAttribute("company", myEnterpriseInfo);
        return "companyInfo";
    }

=======
	
	
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
	
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e
}
