package com.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.po.MyCollege;


public interface CollegeService {
	public List<MyCollege> selectAllinfo();
	public boolean selectCollegeByphone(Map<String, Object> map,Model model,HttpServletRequest request);
}
