package com.cos.kms.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.kms.domain.user.User;
import com.cos.kms.domain.user.UserRepository;
import com.cos.kms.web.dto.JoinReqDto;
import com.cos.kms.web.dto.LoginReqDto;

@Controller
public class UserController {
	UserRepository userRepository;
	HttpSession session;

	public UserController(UserRepository userRepository, HttpSession session) {
		this.userRepository = userRepository;
		this.session = session;
	}

	@GetMapping("/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}

	@GetMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}

	@GetMapping("main")
	public String main() {
		return "main";
	}

	@PostMapping("/join")
	public String join(JoinReqDto dto) {
		User user = new User();
		user.setUsername(dto.getUsername());
		user.setPassword(dto.getPassword());
		user.setEmail(dto.getEmail());

		userRepository.save(user);
		return "redirect:/loginForm";
	}

	@PostMapping("/login")
	public String login(LoginReqDto dto) {
		User userEntity = userRepository.mLogin(dto.getUsername(), dto.getPassword());
		if (userEntity == null) {
			return "redirect:/loginForm";
		} else {
			session.setAttribute("principal", userEntity);
			return "redirect:/main";
		}
	}

}
