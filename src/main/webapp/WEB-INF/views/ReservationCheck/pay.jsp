<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%-- 		if (${sessionScope.loginid} != null) { --%>

		<div>

			<button>${sessionScope.loginid}님 환영합니다
			</button>

		</div>
		<div>
			<a href="moveMypage.do"><button>마이페이지</button></a> 
		</div>
		<div>
			<a href="logout.do"><button>로그아웃</button></a> 
		</div>
<!-- 		} else { -->

<!-- 		<div> -->
<!-- 			<a href="moveLogin.do"><button>로그인</button></a> --> 
<!-- 		<div> -->
<!-- 			<a href="moveRegister.do"><button>회원가입</button></a> --> - 
<!-- 		</div> -->

<!-- 		} -->

	</div>
	

	<h3>${sessionScope.loginid}님로그인</h3>
	영화 이름/ 선택 날짜
	<form action="/ReservationCheck/reservechecksubmit" method="post">

		<!-- //movie -->
		<section id="movie">
			<div class="movie">
				<h2 class="ir_so">결제 창</h2>
				<div class="container">
					<div class="row">
						<div class="content">
							<div class="movie_left"></div>
							<div class="movie_right">
								<div>날짜 - ${m.date}</div>
								<div>
								예약좌석
								<c:forEach var="str" items="${strlist }">
									${str }
								</c:forEach>
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
								<input type="hidden" name ="time" value ="${t.id }">
								<%-- <div> 타이틀 - ${t.detail.movie.title } </div> --%>
								<input type="hidden" name="user" value="${sessionScope.loginid }">
								<input type="hidden" name="seatlist" value="${seatlist }">
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