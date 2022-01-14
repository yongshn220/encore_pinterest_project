<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/ReservationCheck/pay.css">
<title>Insert title here</title>
</head>
<body>
		<!--header-->
	<header id="header">
		<div class="contatiner">
			<div class="row">
				<div class="header">
					<h1>
						<a href="/Home/main"> <img src="/images/logo.png" alt="ElVOM">
						</a> <span>ENCOREPLEX</span>
					</h1>
					<nav class="nav">
						<ul class="clearfix">
							<li><a href="/User/login"> <img src="/images/login.png"
									alt="로그인"> <span>로그인</span>
							</a></li>
							<li><a href="/User/join"> <img src="/images/join.png"
									alt="회원가입"> <span>회원가입</span>
							</a></li>
							<li><a href="/User/myinfo"> <img src="/images/info.png"
									alt="MY ElVOM"> <span>MY ElVOM</span>
							</a></li>
						</ul>

					</nav>
					<!-- search -->
					<link rel="stylesheet"
						href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
					<!-- 돋보기아이콘 -->
					<form action="/Home/getbytitle" method="post">
						<div class="search-box">
							<input type="text" class="search-txt" name="title"
								placeholder="검색어를 입력하세요"> <a class="search-btn"> <i
								class="fas fa-search"></i>
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</header>
	

	
	
	<form action="/ReservationCheck/reservechecksubmit" method="post">

		<!-- //movie -->
		
		<section id="movie">
		
			<div class="movie">
			<h3>${sessionScope.loginid}님로그인</h3>
				<h2 class="ir_so">결제 창</h2>
				<div class="container">
					<div class="row">
						<div class="content">
							<div class="movie_left"></div>
							<div class="movie_right">
								<div>날짜 - ${t.movieDetail.date }</div>
								<div>
								예약좌석
							
								<input type="text" name ="seatStr" value ="${seatStr }">
								
								</div>
								<div>
									성인 - <input type="text" name="adult_num" value="${a}">명
								</div>
								<div>
									청소년 -<input type="text" name="child_num" value="${c}">명
								</div>
								<div>성인가격 - ${apay}원</div>
								<div>청소년가격 - ${cpay}원</div>
								<div>
									합계금액 - <input type="text" name="price" value="${ppay }">
								</div>
								<div>
									시간 -${t.timeRoom}
								</div>
								<%-- <div> 타이틀 - ${t.detail.movie.title } </div> --%>
								<input type="hidden" name="seatList" value="${seatList }">
								<input type="submit" value="결제">
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</section>
		<!-- //movie -->
	</form>
</body>


<!-- <div> -->
<!-- 			<form class="moveSeatForm" action="moveSeat.do" method="post"> -->
<!-- 				<input type="hidden" class="title" name="title"> -->
<!-- 				 <input -->
<!-- 					type="hidden" class="movieAge" name="movieAge"> <input -->
<!-- 					type="hidden" class="selectedTheater" name="selectedTheater"> -->

<!-- 				<input type="hidden" class="reserveDate" name="movieDate">  -->
<!-- 				<input type="hidden" class="runningTime" name="runningTime"> -->
<!-- 				<button class="moveSeatButton" type="button">예약하기</button> -->
<!-- 			</form> -->
<!-- 		</div> -->

</html>