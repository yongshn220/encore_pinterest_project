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
								<a>일반</a>
								<ul>
									<li class="type_adult_block" data-count="0"></li>
									<li class="type_adult_block" data-count="1"></li>
									<li class="type_adult_block" data-count="2"></li>
									<li class="type_adult_block" data-count="3"></li>
									<li class="type_adult_block" data-count="4"></li>
									<li class="type_adult_block" data-count="5"></li>
									<li class="type_adult_block" data-count="6"></li>
								</ul>
							</div>
							<div id="type_child_area">
								<a>청소년</a>
							</div>					
						</div>
						<div id="info_area">
						</div>
						<div id="seat_area">
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/SeatSelection/js/test.js"></script>
</body>
</html>