<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/user/join.css">
<title>회원가입</title>
<script type="text/javascript">
const xhttp = new XMLHttpRequest();


/* $("#header").on("onclick" , function(){
	
)} */

xhttp.onload = function() {
			let res = JSON.parse(xhttp.responseText);
			let txt = "";
			if(res.flag){
				txt = "사용 가능한 아이디";
			}else{
				txt = "사용 불가능한 아이디";
			}
			document.getElementById("res").innerHTML = txt;
}

const idCheck=()=>{
	const idVal = document.getElementById("id").value;
	xhttp.open("GET", "/User/idcheck?id="+idVal);
	xhttp.send();
}

</script>
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
	<!-- //header -->
	
	<section id="join">
		<div class="join">
		<h2>EIVOM 회원 가입</h2>
			<div class="container">
				<div class="row">
					<div class="wrapper">
						<div class="content">
							<form action="/User/join" method="post">
							<div>
								<h3><label for="id">아이디</label></h3>
								<span class="box int_id">
									<input type="text" name="id" id="id" class="int" size=20 required>
								</span>
								<span class="id_check">
								<input type="button" value="중복체크" onclick="idCheck()">
								</span>
								<div id="res"></div>
							</div>
							<div class="pwd">
								<h3><label for="pwd">비밀번호</label></h3>
								<span class="box int_pwd">
								<input type="password" name="pwd" id="pwd" class="int" required>
								</span>
							</div>
							<div>
								<h3><label for="name">이름</label></h3>
								<span class="box int_name">
								<input type="text" name="name" id="name" class="int" required>
								</span>
							</div>
							<div>
								<h3><label for="email">이메일</label></h3>
								<span class="box int_email">
								<input type="email" name="email" id="email" class="int" required>
								</span>
							</div>
							<div>
								<h3><label for="gender">성별</label></h3>
								<span class="box int_gender">
								<input type="radio" name="gender" id="gender" value="xy" checked>남성
								<input type="radio" name="gender" value="xx">여성
								</span>
							</div>
							<div>
								<h3 class="age"><label for="age">나이</label></h3>
								<span class="box int_age">
								<input type="number" name=age id="age" class="int" required>
								</span>
							</div>
								<input class="join_button" type="submit" value="가입하기">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //join -->

	<script type="text/javascript" src="/js/jquery.js"></script>
</body>
</html>