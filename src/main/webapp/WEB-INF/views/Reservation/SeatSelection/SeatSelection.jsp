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
					<div id="title">인원/좌석</div>
					<div id="select_area">
						<div id="amount_area">
							<div id="type_adult_area">
								<div id="text">일반</div>
								<ul>
									<li class="type_adult_block" data-count="0">0</li>
									<li class="type_adult_block" data-count="1">1</li>
									<li class="type_adult_block" data-count="2">2</li>
									<li class="type_adult_block" data-count="3">3</li>
									<li class="type_adult_block" data-count="4">4</li>
									<li class="type_adult_block" data-count="5">5</li>
									<li class="type_adult_block" data-count="6">6</li>
								</ul>
							</div>
							<div id="type_child_area">
								<div id="text">청소년</div>
								<ul>
									<li class="type_child_block" data-count="0">0</li>
									<li class="type_child_block" data-count="1">1</li>
									<li class="type_child_block" data-count="2">2</li>
									<li class="type_child_block" data-count="3">3</li>
									<li class="type_child_block" data-count="4">4</li>
									<li class="type_child_block" data-count="5">5</li>
									<li class="type_child_block" data-count="6">6</li>
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
									<div></div>
									<div>선택</div>
								</li>
								<li>
									<div></div>
									<div>선택가능</div>
								</li>
								<li>
									<div></div>
									<div>예매완료</div>
								</li>
							</ul>
						</div>
						<div id="seat_screen_box">
						</div>
						<div id="seat_selection_box">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/SeatSelection/js/room.js"></script>
	<script type="text/javascript" src="/SeatSelection/js/main.js"></script>
</body>
</html>