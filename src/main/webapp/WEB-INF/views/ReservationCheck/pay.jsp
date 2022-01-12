<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--  	if (loginid == null) { -->

<!-- <!-- 	<script> --> -->
<!-- // 		alert("로그인이 필요한 작업입니다 로그인을 진행해 주세요!") -->
<!-- // 		location.href = "moveMain.do" -->
<!-- <!-- 	</script> --> -->

<!--  	} -->


	<div class="header-inner"> -->


<!-- 		if (loginid != null) { -->

<!-- 	<div> --> -->
<%--  			<button><%=loginid.getName()%>님 환영합니다 --%> --%>
<!--  			</button> --> -->
		</div> -->
 		<div> -->
			<a href="moveMypage.do"><button>마이페이지</button></a> -->
 		</div> -->
		<div> -->
 			<a href="logout.do"><button>로그아웃</button></a> -->
 		</div> -->
		} else {

 		<div> -->
 			<a href="moveLogin.do"><button>로그인</button></a> -->
		</div> -->
 		<div> -->
 			<a href="moveRegister.do"><button>회원가입</button></a> -->
- 		</div> -->

	}

	</div> -->

	<h3>${sessionScope.loingid}님로그인</h3>
	영화 이름/ 선택 날짜
	<form action="/user/myinfo" method="post">
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" value="${r.title }"></td>
		</tr>
		<tr>
			<th>가격</th>
			<td><input type="number" name="price" value="${r.price }"></td>
		</tr>
		<tr>
			<th>이미지</th>
			<td><img src="/${r.img_path }" width="200"
				height="200"></td>
		</tr>
		<tr>
			<th>선택날짜</th>
			<td><input type="number" name="date" value=${r.date }" ></td>
		</tr>
		<tr>
			<th>선택좌석</th>
			<td><input type="number" name=seat value=${r.seat }"></td>
		</tr>
		<tr>
			<th>선택시간</th>
			<td><input type="number" name="time" value=${ r.time }" ></td>
		</tr>
		<tr>
			<th>선택상영관</th>
			<td><input type="number" name="room" value=${r.room }" ></td>
		
			<th>결제</th>
			<td><input type="submit" value="결제"></td>
		</tr>
	</table>
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