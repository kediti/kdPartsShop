package com.kdparts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.kdparts.user.User;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class UserController {
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/loginCheck")
	public String loginCheck() {
		return "loginCheck";
	}
	@RequestMapping("/signUp")
	public String signUp() {
		return "signUp";
	}
	@RequestMapping("/joinAction")
	public String joinAction() {
		return "joinAction";
	}
	
}

