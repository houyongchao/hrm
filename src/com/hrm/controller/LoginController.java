package com.hrm.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hrm.pojo.Account;


@Controller
public class LoginController {
	

	@RequestMapping("/index")
	public String index(){
		return "index";
	}
	@RequestMapping("/login")
	public String login(Account account){
		try {
			SecurityUtils.getSubject().login(new UsernamePasswordToken(account.getUsername(),account.getPassword()));
			return "redirect:/manager/home";
		} catch (AuthenticationException e) {
			return "index";
		}
	}
	@RequestMapping("/loginout")
	public String loginout(){
		SecurityUtils.getSubject().logout();
		return "redirect:/index";
	}
}
