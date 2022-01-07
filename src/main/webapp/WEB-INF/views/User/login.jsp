<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/user/login.css">
	<title>Insert title here</title>
</head>
<body>
	<header id="header">
		<div class="container">
			<div class="row">
				<div class="header">
					<h1>
						<a href="#">
							<em><img alt="logo" src="/images/logo.png"></em>
						</a>
					</h1>
					<nav class="nav">
						<ul class="clearfix">
							<li><a href="">영화 </a></li>
							<li><a href="">극장 </a></li>
							<li><a href="">예매 </a></li>
							<li><a href="">스토어 </a></li>
							<li><a href="">이벤트 </a></li>
							<li><a href="/User/logout">로그인</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- //header -->

 	<section id="login">
 		<h2 class="ir_so">로그인</h2>
		<div class="login_inf">
			<div class="container">
				<div class="row">
					<div class="login_left">
					<h2>
						<img alt="login" src="/images/login.png">
					</h2>
					</div>
					<div class="login_right">
						<div class="login_insert">
							<form action="/User/login" method="post">
							<label for="id">아이디</label>
								<span class="box int_id">
									<input type="text" name="id" id="id" class="int" size=20 required>
								</span>
							<label for="pwd">비밀번호</label>
								<span class="box int_pwd">
								<input type="password" name="pwd" id="pwd" class="int" required>
								</span>
								<span class="box int_button"><input type="submit" class="login" value="L O G I N">
								</span>
							</form>	
						</div>
						<div class="login_button">
							<ul>
								<li class="green"><a href="/User/join">회원가입</a></li>
								<li class="red"><a href="#">Id찾기</a></li>
								<li class="red2"><a href="#">Pwd찾기</a></li>
							</ul>
						</div>
						<a class="login_naver" href="#">
						<img alt="login" src="/images/loginNaver.png">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //login -->
	
	<section>
		<img alt="down_banner" class="down_banner" src="/images/banner_down.png">
	</section>

	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/SeatSelection/page/login.js"></script>
</body>
</html>