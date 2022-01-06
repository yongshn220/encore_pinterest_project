<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/user/join.css">
<title>Insert title here</title>
<script type="text/javascript">
const xhttp = new XMLHttpRequest();

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
	xhttp.open("GET", "/user/idcheck?id="+idVal);
	xhttp.send();
}

</script>
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
	
	<section id="join">
		<div class="join">
		<h2>EIVOM 회원 가입</h2>
			<div class="contatiner">
				<div class="row">
					<div class="join_insert">
						<div class="join_left">
						<form action="/User/join" method="post">
							<ul>
								<li>아이디:<input type="text" name="id" id="id" size=10></li>
								<li><input type="button"value="중복체크" onclick="idCheck()"></li>
								<li><div id="res"></div></li>
								<li>비밀번호:<input type="password" name="pwd"></li>
								<li>이름:<input type="text" name="name"></li>
								<li>이메일:<input type="email" name="email"></li>
								<li>성별:<input type="radio" name="gender" value="xx">남
								<input type="radio" name="gender" value="xy">여</li>
								<li>나이:<input type="number" name=age></li>
								<li><input type="submit" value="회원가입"></li>
							</ul>
						</form>
						</div>
						<div class="login_left">
						<h2>
							<img alt="login" src="/images/joinDoor.png">
						</h2>
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