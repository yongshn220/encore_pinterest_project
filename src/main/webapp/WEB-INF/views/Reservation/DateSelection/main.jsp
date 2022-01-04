<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

const a = (moive, date) => {
	xhttp.open("GET", "/Reservation/DateSelection/timelist?moive")
	xhttp.send();
}


</script>
</head>
<body>
	<h3>예약</h3>
	<a href="홈주소">Home</a>
	<br />
	<img src="/이미지주소/${list.move.img_path }">
	<!-- 이미지 주소 넣어야함 -->
	<input type="text" name="title" value="${list.move.title }" readonly>
	<br />
	<input type="text" name="title" value="${list.move.content }" readonly>
	<br />
	<input type="text" name="title" value="${list.move.show_period }" readonly>
	<br />
	<h4>날짜</h4>
	<c:forEach var="d" items="${list }">
	<table border="1">
	<tr><th><input type="button" value="${d.date }" onclick="a('${d.movie }', '${d.date }')"></th></tr>
	</table>
	</c:forEach>
	<h5>시간</h5>
	<div id="time"></div>
</body>
</html>