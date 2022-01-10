<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/SeatSelection/css/main.css"/>
	
<title>Insert title here</title>
</head>
<body>
	<div id=screen>
		<div id="header">
		</div>
		<div id="body">
			<div id="container">
				<div id="contents">
					<div id="title"><div>인원 / 좌석</div></div>
					<div id="select_area">
						<div id="amount_area">
							<div id="type_adult_area">
								<div id="text">일반</div>
								<ul>
								</ul>
							</div>
							<div id="type_child_area">
								<div id="text">청소년</div>
								<ul>
								</ul>
							</div>					
						</div>
					</div>
					<div id="info_area">
						<div id="date">
							<div>
								2022.01.07(금) 13:00~15:38
							</div>
						</div>
						<div id="seat_available">
							<div>
								남은좌석 14/25
							</div>
						</div>
					</div>
					<div id="seat_area">
						<div id="instruction_area">
							<ul>
								<li>
									<div id="icon1" class="icon"></div>
									<div id="text1" class="text">선택</div>
								</li>
								<li>
									<div id="icon2" class="icon"></div>
									<div id="text2" class="text">선택가능</div>
								</li>
								<li>
									<div id="icon3" class="icon"></div>
									<div id="text3" class="text">예매완료</div>
								</li>
								<li>
									<div id="icon4" class="icon"></div>
									<div id="text4" class="text">선택불가</div>
								</li>
								
							</ul>
						</div>
						<div id="seat_screen_box">
							<div>SCREEN</div>
						</div>
						<div id="seat_selection_box">
						</div>
						<div id="seat_column_name">
							<ul>
								<li>A</li>
								<li>B</li>
								<li>C</li>
								<li>D</li>
								<li>E</li>
							</ul>
						</div>
					</div>
					
					<div id="result_area">
						<div id="previous_btn">
							<div id="res_icon"></div>
							<div id="res_text">이전으로</div>
						</div>
						<div id="progress_btn">
							<div id="res_icon"></div>
							<div id="res_text">결제선택</div>
						</div>
						<div id="center_area">
							<div id="res_area1" class="res_area">
								<ul>
									<li id="res_title">스파이더맨<파 프럼 홈></li>
								</ul>
							</div>
							<div id="res_area2" class="res_area">
								<ul id="res_name">
									<li>극장</li>
									<li>일시</li>
									<li>상영관</li>
									<li>인원</li>
								</ul>
								<ul id="res_value">
									<li id="res_theater">EIVOM</li>
									<li id="res_date">2022.1.6(목) 08:40</li>
									<li id="res_room">2관</li>
									<li id="res_amount">일반 2명,청소년 1명</li>
								</ul>
							</div>
							<div id="res_area3" class="res_area">
								<div id="res_name">좌석번호</div>
								<div id="res_seatId">C5, C6</div>
							</div>
							<div id="res_area4" class="res_area">
								<ul id="res_name">
									<li>일반</li>
									<li>청소년</li>
									<li>총금액</li>
								</ul>
								<ul id="res_value">
									<li id="res_adultPrice">15,000원 X 3</li>
									<li id="res_childPrice">11,000원 X 1</li>
									<li id="res_totalPrice">56,000</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/SeatSelection/js/pageEventHandler.js"></script>
	<script type="text/javascript" src="/SeatSelection/js/function.js"></script>
	<script type="text/javascript" src="/SeatSelection/js/main.js"></script>
</body>
</html>