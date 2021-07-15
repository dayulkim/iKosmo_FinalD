package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {
	
	@RequestMapping("/")
	public String homepage() {
		return "main/index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "member/login/login";
	}
	

}
