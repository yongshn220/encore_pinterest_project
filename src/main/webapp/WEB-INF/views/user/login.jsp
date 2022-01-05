<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="./SeatSelection/css/main.css"/>
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
							<li><a href="#">로그인중...</a></li>
						</ul>
				</div>
			</div>
		</div>
	</header>
	<!-- //header -->

	<section id="login">
		<div class="title"><h3>로그인</h3></div>
		<div class="login_inf">
			<div class="container">
				<div class="row">
					<div class="loing_insert">
						<form action="/user/login" method="post">
							<ul>
								<li>ID : <input type=text name="id"></li>
								<li>PWD : <input type=password name="pwd"></li>
								<li><input type="submit" value="로그인"></li>
								<li><a href="/user/join">회원가입</a></li>
							</ul>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //login -->

	<script type="text/javascript" src="./js/jquery.js"></script>
	<script type="text/javascript" src="./SeatSelection/page/login.js"></script>
</body>
</html>