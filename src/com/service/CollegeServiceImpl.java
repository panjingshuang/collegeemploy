package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.CollegeDao;
import com.dao.EducationDao;
import com.po.MyCollege;
import com.po.MyEducation;


@Service("collegeService")
@Transactional
public class CollegeServiceImpl implements CollegeService {
<<<<<<< HEAD
    @Autowired
    private CollegeDao dao;
    @Autowired
    private EducationDao educationDao;

    @Override
    public List<MyCollege> selectAllinfo() {
        return dao.selectAllinfo();
    }

    @Override
    public boolean selectCollegeByphone(Map<String, Object> param, Model model, HttpServletRequest request) {
        try {
            MyCollege college = dao.selectCollegeByphone(param);
            int id = dao.getCollegeId(param);
            System.out.println(id);
            //出现异常是当对不存在的college取数据的时候 ，从数据库中获取数据的时候没有产生异常
            System.out.println(college.getPhone() + "----------" + college.getPassword());
            HttpSession session = request.getSession();
            session.setAttribute("collegeId", id);
            session.setAttribute("user", college.getName());
            session.setAttribute("phone", college.getPhone());
            model.addAttribute("college", college);

            Map<String, Object> map2 = new HashMap<>();
            map2.put("id", id);
            try {
                MyEducation myEducations = educationDao.selectEducation(map2);
                System.out.println(myEducations.getId());
                model.addAttribute("education", myEducations);
            } catch (Exception e) {
                // TODO: handle exception
            }


            return true;
        } catch (Exception e) {
            return false;

        }

    }
=======
	@Autowired
	private CollegeDao dao;
	@Autowired
	private EducationDao educationDao;
	
	@Override
	public List<MyCollege> selectAllinfo() {
		return dao.selectAllinfo();
	}
	@Override
	public boolean selectCollegeByphone(Map<String, Object> param,Model model,HttpServletRequest request) {
		try{
			MyCollege  college = dao.selectCollegeByphone(param);
			int id = dao.getCollegeId(param);
			System.out.println(id);
			//出现异常是当对不存在的college取数据的时候 ，从数据库中获取数据的时候没有产生异常
			System.out.println(college.getPhone()+"----------"+college.getPassword());
			HttpSession session = request.getSession();
			session.setAttribute("collegeId", id);
			session.setAttribute("phone", college.getPhone());
			model.addAttribute("college", college);
			
			Map<String, Object> map2  = new HashMap<>();
			map2.put("id", id);
			try {
				MyEducation myEducations = educationDao.selectEducation(map2);
				System.out.println(myEducations.getId());
				model.addAttribute("education", myEducations);
			}catch (Exception e) {
				// TODO: handle exception
			}
			
			
			return	true;
		}catch (Exception e) {
			return false;
			
		}
			
	}
>>>>>>> fbfe18d1c5300530420e3ecf43f68621616c954e

}
