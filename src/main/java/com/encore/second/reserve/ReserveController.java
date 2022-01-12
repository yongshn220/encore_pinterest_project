package com.encore.second.reserve;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.encore.second.user.User;

@Controller
@RequestMapping("/ReservationCheck")
public class ReserveController {
	
	@Autowired
	private ReserveService service;
	//private String path = "C:\\img\\movie\\";


	
	//내가 예약한 영화 목록
	@GetMapping("/mylist")
	public void mylist(Map map, HttpSession session) {// map: 뷰 페이지에 전달할 값들을 담을라고
	// 세션에 "loginid"이름으로 저장된 값을 추출 => 현재 로그인한 사람의 id
	String loginid = (String) session.getAttribute("loginid");

	// 예약자가 loginid인 예약을 검색
	ArrayList<Reserve> list = service.getByUser_id(loginid);
	map.put("list", list);// 뷰페이지에 전달할 데이터를 map에 담음
	}
	
	
	@GetMapping("/pay/{id}") // /user/myinfo/${sessionScope.loginid} 테이블마다 검색 후 map에등록
	public String myinfo(@PathVariable("id") String loginid, Map map) {// myinfo.jsp에 로그인 사람의 정보를 출력
		//User u = service.getUser(loginid);타임아이디?
		
		//map.put("u", u);// 뷰 페이지에 전달. 뷰 페이지에 데이터 전달하려면 메서드 파라메터에 맵을 추가하고, 데이터를 맵에 put()으로 추가
		return "/myinfo"; 
	}
	//예매정보 db등록
	//결제를 버튼 클릭시 db저장
	@PostMapping("/")
	public String reservecheck(User u) {
		//service.save(r);// 예매정보를 db에 저장
		return "redirect://";
	}
//	@GetMapping("/list")
//	public void list(Map map) {
//		//ArrayList<Reserve> list = service.getAll(); getAll 메소드를 만들어서 받아온 예약정보를 객체로 만들어 뿌림
//		//map.put("list", list)
//	}
//------------------------------------------------------------------------------------------------------------------------
//	@Autowired
//	CGVReserveService cgvReserveService;
//	
//	@Autowired
//	CGVPayService cgvPayService;
//	
//	private static Logger logger = LoggerFactory.getLogger(CGVInfoController.class);
//	@RequestMapping(value="moveReserve.do", method = {RequestMethod.GET, RequestMethod.POST})
//	public String moveReserve() {
//		logger.info("moveReserve");
//		return "reserve";
//	}
//	
//	
//	@RequestMapping(value="moveSeat.do", method = {RequestMethod.GET, RequestMethod.POST})
//	public String moveSeat(Model model, CGVReserveDto dto) {
//		
//		System.out.println(dto.toString());
//		logger.info("moveSeat");
//		model.addAttribute("reserve", dto);
//		
//		return "seat";
//	}
//	
//
//	@RequestMapping(value="moveKakao.do", method = {RequestMethod.GET, RequestMethod.POST})
//	public String moveKakao(Model model, CGVReserveDto dto, CGVPayDto payDto, HttpSession session) {	
//		System.out.println(dto.toString());
//		logger.info("moveKakao");
//		CGVMemberDto login =(CGVMemberDto)session.getAttribute("login");
//		
//		dto.setId(login.getId());
//		boolean isSuccess = cgvReserveService.CGVReserve(dto);
//		System.out.println(isSuccess);
//		model.addAttribute("reserve", dto);
//		model.addAttribute("pay", payDto);
//		if(isSuccess == false) {
//			System.out.println("오류가 났어요...");
//			return "redirect:/moveMain.do";
//		}
//		return "kakao";
//	}
//	
//	@RequestMapping(value="payKakao.do", method = {RequestMethod.GET, RequestMethod.POST})
//	public String payKakao(Model model, CGVReserveDto dto, CGVPayDto payDto, HttpSession session) {	
//		
//		logger.info("moveKakao");
//		CGVMemberDto login =(CGVMemberDto)session.getAttribute("login");
//	
//		 dto.setId(login.getId());
//		 System.out.println(dto.toString() +"이것이 dto다");
//		 List<CGVReserveDto> list = cgvReserveService.getCGVReserve(dto);
//		/* CGVReserveDto cgvReserveDto = cgvReserveService.getCGVReserve(dto); */
////		if(cgvReserveDto != null) {
//			System.out.println("여기있다");
////			System.out.println(cgvReserveDto.toString());
////		}
//		payDto.setId(list.get(0).getId());
//		payDto.setReserveSequence(list.get(0).getReserveSequence());
//		System.out.println("문제찾기");
//		System.out.println(payDto.toString());
//		boolean isSuccess = cgvPayService.payTicket(payDto);
//		System.out.println(isSuccess);
//		if(isSuccess == false) {
//			System.out.println("오류가 났어요...");
//			return "redirect:/moveMain.do";
//		}
//		model.addAttribute("type", "reserve");
//		model.addAttribute("isSuccess", isSuccess);
//		/*
//		 * model.addAttribute("reserve", dto); model.addAttribute("pay", payDto);
//		 */
//		
//		return "process";
//	}
//	
//	@RequestMapping(value="moveMypage.do", method = {RequestMethod.GET, RequestMethod.POST})
//	public String moveMain(Model model, CGVReserveDto reserveDto, CGVPayDto payDto, HttpSession session) {
//		CGVMemberDto login =(CGVMemberDto)session.getAttribute("login");
//		
//		 
//		reserveDto.setId(login.getId());
//		List<CGVReserveDto> list = cgvReserveService.getPayJoinTable(reserveDto);
//		
//		if(list != null) {
//			for(CGVReserveDto dto : list) {
//				System.out.println(dto.toString());
//				model.addAttribute("reserveList", list);
//			}
//		}else {
//			System.out.println("이것이 오류다");
//		}
//		
//		return "myPage";
//	}
//}
}
