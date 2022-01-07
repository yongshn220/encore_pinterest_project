package com.encore.second.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.encore.second.reserve.Reserve;
import com.encore.second.reserve.ReserveService;
import com.encore.second.seat.SeatService;

@Controller
@RequestMapping("/User")
public class UserController {

	@Autowired
	private UserService service;
	@Autowired
	private ReserveService serviceR;
	@Autowired
	private SeatService serviceS;
	
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
		return "redirect:/Home/list";
	}
	
	@GetMapping("/login") //홈페이지에서 로그인 버튼 클릭시 login 페이지로 넘어감
	public void loginForm() {}
	
	@PostMapping("/login") 
	public String login(String id, String pwd, HttpSession session) {
		User u = service.getUser(id);
		String path = "User/login";
		if(u != null && u.getPwd().equals(pwd)) {
			session.setAttribute("loginid",	id);
			path = "redirect:/Home/list";
		}
		return path;
	}
	
	@GetMapping("/myinfo")
	public void editForm(HttpSession session, Map map) {
		String id = (String) session.getAttribute("loginid");
		User u = service.getUser(id);
		ArrayList<Reserve> r = serviceR.getByUser_id(u);
		//ArrayList<Seat> s = serviceS.getByReserve_id(r);		
		map.put("u", u);
		map.put("r", r);
		//map.put("s", s);
	}
	
	@PostMapping("/edit")
	public String edit(User u) {
		service.saveUser(u);
		return "redirect:/Use/myinfo";
	}
	
	@GetMapping("/out")
	public String out(HttpSession session) {
		String id = (String) session.getAttribute("loginid");
		service.delUser(id);
		return "redirect:/User/logout";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/home";
	}
}



















