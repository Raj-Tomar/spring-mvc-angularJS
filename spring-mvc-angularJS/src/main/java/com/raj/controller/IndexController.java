package com.raj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class IndexController {
	
	@GetMapping(value = "/")
	public String getIndexPage() {
		return "index";
	}
	
	@GetMapping(value = "/home")
	public String home() {
		return "home";
	}
	
	@GetMapping(value = "/about")
	public String aboutUs() {
		return "about";
	}
	
	@GetMapping(value = "/contact")
	public String contact() {
		return "about";
	}

	@GetMapping(value = "/user")
	public String getUserIndexPage() {
		return "/UserView/User";
	}
	
	@GetMapping(value = "/angular")
	public String getAngularIndexPage() {
		return "/AngularJSView/AngularJS";
	}
	
	

}