package com.infinity.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserWebController {
	@GetMapping("/")
	public String Login(HttpServletRequest request) {
		request.setAttribute("userid", "user");
	return "Welcome";	
	}
	
}
