package com.controller;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.EnterpriseService;




@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {
	@Autowired
//	private EnterpriseDao enterpriseDao;
	private EnterpriseService enterServie;

	@RequestMapping("/login")
	public String login () {
		return "enterpriseLogin";
	}
	@RequestMapping("/verificationLogin")
	public String verificationLogin(HttpServletRequest request,Model model) {
		String phone = request.getParameter("college");
		String password = request.getParameter("password");
		Map<String, Object> map  = new HashMap<>();
		map.put("phone", phone);
		map.put("password",password);
		if(enterServie.selectEnterpriseByphone(map)) {
			return "main";
		}else {
			model.addAttribute("error", "密码或用户名错误");
			return "enterpriseLogin";
		}

		
	}
}
