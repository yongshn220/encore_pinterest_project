package com.encore.second.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.encore.second.reserve.Reserve;
import com.encore.second.reserve.ReserveService;

@Controller
@RequestMapping("/User")
public class UserController {

	@Autowired
	private UserService service;
	
	@Autowired
	private ReserveService serviceR;
	
	@GetMapping("/join")
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
		return "redirect:/Home/main";
	}
	
	@GetMapping("/login")
	public void loginForm(HttpSession session) {
		session.invalidate();
	}
	
	@PostMapping("/login")
	public String login(String id, String pwd, HttpSession session, HttpServletResponse response) {
		User u = service.getUser(id);
		String path = "User/login";
		if(u != null && u.getPwd().equals(pwd)) {
			session.setAttribute("loginid",	id);
			path = "redirect:/Home/main";
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script language='javascript'>");
				out.println("alert('잘못 입력하셨습니다.')");
				out.println("</script>");
				out.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return path;
	}
	
	@GetMapping("/myinfo")
	public void editForm(HttpSession session, Map map) {
		String id = (String) session.getAttribute("loginid");
		User u = service.getUser(id);
		map.put("u", u);
		ArrayList<Reserve> r = serviceR.getByUser_id(u);
		map.put("r", r);
		
	}
	
	@PostMapping("/edit")
	public String edit(User u, Map map) {
		service.saveUser(u);
		map.put("u", u);
		return "redirect:/User/myinfo";
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
		return "redirect:/Home/main";
	}
}



















