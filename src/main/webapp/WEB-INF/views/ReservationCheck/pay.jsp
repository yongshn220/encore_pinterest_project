<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<h3>결제</h3>
				<!-- <h2 class="ir_so">결제 창</h2> -->
				<div class="container">
					<!-- <div class="row"> -->
					<div class="content">
						<div class="movie_left">
							<h4 class="titlebar">
								<span class="header">내가 선택한 영화</span>
							</h4>

							<dl class="info">
								<dd>
									<img src="${t.movieDetail.movie.img_path }"
										style="width: 220px; height: 269px; margin-top: 9px;">
								</dd>
								<dd class="title">${t.movieDetail.movie.title }</dd>
							</dl>

						</div>


						<div class="movie_middle">
							<h4 class="titlebar">
								<span class="header">예매정보</span>
							</h4>

							<dl class="info">
								</br>
								<dd style="text-align: justify; margin-inline: 55px;">일시
									${t.movieDetail.date }</dd>
								<dd>시간 ${t.timeRoom}</dd>
								<dd style="text-align: justify; margin-inline: 56px;">
									좌석번호
									${seatStr }
								</dd>
							</dl>

							<h4 class="titlebar">
								<span class="header">결제금액</span>
							</h4>

							<dl class="info">
								<dd
									style="text-align: justify; margin-inline: 56px; margin-top: 35px">성인
									${a}명 | ${apay}원</dd>
								<dd style="text-align: justify; margin-inline: 56px;">청소년
									${c}명 | ${cpay}원</dd>
								<dd style="text-align: justify; margin-inline: 56px;">총금액
									${ppay}원</dd>
							</dl>

							<input type="hidden" name="user" value="${sessionScope.loginid }">
							<input type="hidden" name="time" value="${t.id }">
							<input type="hidden" name="adult_num" value="${a }">
							<input type="hidden" name="child_num" value="${c }">
							<input type="hidden" name="price" value="${ppay }">
							<input type="hidden" name="seatStr" value="${seatStr }">
							<input type="hidden" name="seatList" value="${seatList }">
						</div>

						<div class="movie_right">

							<iframe class="side"
								src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@M_Rectangle"></iframe>

							<span><input type="submit" value="결제" class="paybutton">
							</span>
						</div>


						<%-- 	<div>
								성인 : <input type="text" name="adult_num" value="${a}">명
							</div>
							<div>
								청소년 : <input type="text" name="child_num" value="${c}">명
							</div>
							<div>성인가격 : ${apay}원</div>
							<div>청소년가격 : ${cpay}원</div>
							<div>
								합계금액 - <input type="text" name="price" value="${ppay }">
							</div>
							<div>시간 -${t.timeRoom}</div>
							<input type="hidden" name="time" value="${t.id }"> --%>
						<%-- <div> 타이틀 - ${t.detail.movie.title } </div> 
						<input type="hidden" name="user" value="${sessionScope.loginid }">
						<input type="hidden" name="seatlist" value="${seatlist }">--%>
						<!-- 	<input type="submit" value="결제"> -->
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