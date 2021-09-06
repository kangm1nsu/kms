package com.cos.kms.web.dto;

import org.springframework.web.bind.annotation.GetMapping;

public class UserController {
	
	@GetMapping("/loginForm")
	public String LoginForm() {
		return "user/loginForm";
	}
	
	@GetMapping("/joinForm")
	public String JoinFrom() {
		return "user/joinFrom";
	}
	
	@GetMapping("main")
	public String main() {
		return "main";
	}
	
	
}
