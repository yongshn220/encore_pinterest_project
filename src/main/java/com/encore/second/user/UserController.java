package com.encore.second.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService service;
	
	@GetMapping("/join") //로그인 페이지에서 회원가입 버튼 클릭시 join 페이지로 넘어감
	public void joinForm() {}
	
	@ResponseBody
	@RequestMapping("/idcheck")
	public Map idChecking(String id) {
		Map map = new HashMap();
		User u = service.getUser(id);
		boolean flag = false;
		if(u==null) {
			flag = true;
		}
		map.put("flag", flag);
		return map;
	}
	
	@PostMapping("/join") 
	public String join(User u) {
		service.saveUser(u);
		return "redirect:/user/home";
	}
	
	@GetMapping("/login") //홈페이지에서 로그인 버튼 클릭시 login 페이지로 넘어감
	public void loginForm() {}
	
	@PostMapping("/login") 
	public String login(String id, String pwd, HttpSession session) {
		User u = service.getUser(id);
		String path = "user/login";
		if(u != null && u.getPwd().equals(pwd)) {
			session.setAttribute("loginid",	id);
			path = "/home";
		}
		return path;
	}
	
	@GetMapping("/myinfo")
	public void editForm(HttpSession session, Map map) {
		String id = (String) session.getAttribute("loginid");
		User u = service.getUser(id);
		map.put("u", u);
	}
	
	
}



















