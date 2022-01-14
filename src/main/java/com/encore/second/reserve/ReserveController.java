package com.encore.second.reserve;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.encore.second.movie_detail.Movie_detail;
import com.encore.second.movie_detail.Movie_detailService;
import com.encore.second.seat.Seat;
import com.encore.second.seat.SeatService;
import com.encore.second.time.Time;
import com.encore.second.time.TimeService;


@Controller
@RequestMapping("/ReservationCheck")
public class ReserveController {
	
	@Autowired
	private ReserveService service;
	
	@Autowired
	private TimeService service1;
	
	@Autowired
	private SeatService service2;
	
	@Autowired
	private Movie_detailService service3;
	//private String path = "C:\\img\\movie\\";


	
//	//내가 예약한 영화 목록
//	@GetMapping("/mylist")
//	public void mylist(Map map, HttpSession session) {// map: 뷰 페이지에 전달할 값들을 담을라고
//	// 세션에 "loginid"이름으로 저장된 값을 추출 => 현재 로그인한 사람의 id
//	String loginid = (String) session.getAttribute("loginid");
//
//	// 예약자가 loginid인 예약을 검색
//	ArrayList<Reserve> list = service.getByUser_id(loginid);
//	map.put("list", list);// 뷰페이지에 전달할 데이터를 map에 담음
//	}
//	
	
	@GetMapping("/pay")
	public String myinfo(String seatList, int id, int anum, int cnum, Map map) {// myinfo.jsp에 로그인 사람의 정보를 출력
		ArrayList<Seat> list = new ArrayList<>();
		String[] seatCode = {"A","B","C","D","E"};
		String seatStr = "";
		
		Time t = service1.getById(id);
		ArrayList<Seat> s = service2.getByTime(t);
		String[] array = seatList.split(",");
		
		for(int i =0 ; i<array.length; i++) {
			Seat tempSeat = service2.getById(Integer.parseInt(array[i])+1);
			list.add(tempSeat);
		}
		
		for(int i= 0 ; i <list.size(); i++) {
			int row = list.get(i).getRow2();
			int col = list.get(i).getCol2();
			String strCode = seatCode[row]+"열 "+(col+1)+"칸";	
			seatStr += strCode+" . ";
		}
		
		int apay = anum*15000;
		int cpay = cnum*10000;
		int ppay = apay+cpay;
		map.put("apay",apay);
		map.put("cpay",cpay);
		map.put("ppay",ppay);
		map.put("seatStr", seatStr);
		map.put("seatList", seatList);
		map.put("t", t);
		map.put("s", s);
		map.put("a", anum);
		map.put("c", cnum);
		
		return "/ReservationCheck/pay"; 
	}
	
	@PostMapping("/reservechecksubmit")
	public String reservecheck(Reserve r, String seatList) {
		service.add(r);
		
		String[] array = seatList.split(",");
		for(int i =0 ; i<array.length; i++) {
			service2.infoEditById(Integer.parseInt(array[i])+1);
		}
		return "redirect:/Home/main";
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
