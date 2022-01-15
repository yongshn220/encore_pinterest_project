<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/user/login.css">
	<title>로그인</title>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".inout_button").on("click", function(e){
		alert('test0');
		if(${sessionScope.loginid }==null){
		}else{
			alert('test');
			location.href = "/User/logout";
		};
	});
</script>	
</head>
<body>
<!--header-->
	<header id="header">
		<div class="contatiner">
			<div class="row">
				<div class="header">
					<h1>
						<a href="/Home/main"><img src="/images/logo.png" alt="ElVOM"></a> 
						<span class="addTag">ENCOREPLEX</span>
					</h1>
					<nav class="nav">
						<ul class="clearfix">
							<li>
								<a href="/User/login" class="inout_button" type="button"><img src="/images/login.png" alt="로그인"></a>
							</li>
							<li>
								<a href="/User/join"><img src="/images/join.png" alt="회원가입"></a>
							</li>
							<li>
								<a href="/User/myinfo"><img src="/images/info.png" alt="MY ElVOM"></a>
							</li>
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
						<a class="login_naver" href="https://nid.naver.com/nidlogin.login?mode=form&amp;url=https%3A%2F%2Fwww.naver.com">
						<img alt="login" src="/images/loginNaver.png">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //login -->
	
	<section id="banner">
		<div class="container">
			<div class="row">
				<div class="banner_img">
					<img alt="down_banner" class="down_banner" src="/images/banner.png">
				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/SeatSelection/page/login.js"></script>
</body>
</html>