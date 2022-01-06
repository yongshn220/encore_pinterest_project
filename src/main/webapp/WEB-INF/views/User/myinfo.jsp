<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<header id="header">
		<div class="contatiner">
			<div class="row">
				<div class="header">
					<h1>
						<a href="#">
							<em><img alt="logo" src="/images/logo.png"></em>
						</a>
					</h1>
					<nav class="nav"></nav>
						<ul>
							<li><a href="/User/logout">로그아웃</a></li>
						</ul>
				</div>
			</div>
		</div>
	</header>
	<!-- //header -->
	
	<section id="myinfo">
	<div class="title"><h3>내 정보 확인 및 수정</h3></div>
	<div class="myinfo">
		<div class="contatiner">
			<div class="row">
				<div class="join_insert">
					<form action="/User/edit" method="post">
						<ul>
							<li>id:<input type="text" name="id" value="${u.id }" readonly></li>
							<li>pwd:<input type="password" name="pwd" value="${u.pwd }" ></li>
							<li>name:<input type="text" name="name" value="${u.name }" ></li>
							<li>email:<input type="email" name="email" value="${u.email }" ></li>
							<li>gender:<input type="radio" name=gender value="xx">남
							<input type="radio" name=gender value="xy">여</li>
							<li>age:<input type="number" name=age value="${u.age }" ></li>
							<li>edit:<input type="submit" value="내 정보 수정"></li>
							<li><a href="/member/out">탈퇴</a><br/></li>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- //info -->
	
	<section id="myticket">
	<div class="title2"><h3>내 예약 확인</h3></div>
	<div class="myticket">
		<div class="contatiner">
			<div class="row">
				<div class="ticket_check">
					<c:if test="${empty list}">
						예매한 표가 없습니다.
					</c:if>
					<c:if test="${not empty list }">
						<ul>
						<c:forEach var="l" items="${r }">
							<li>"${r.reserve_id }","${r.user.name }", "${r.detial }", "${r.adult_num }", "${r.child_num }", "${r.price }", "${r.seats }"</li>
							<li><a href="#">예매취소</a>
						</c:forEach>
						</ul>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- //ticket -->

</body>
</html>











