package com.kdparts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestControllerAdvice;


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
	@GetMapping("/signUp")
	public String signUp() {
		return "signUp";
	}
	@PostMapping("/joinAction")
	public String joinAction() {
		return "joinAction";
	}

}

