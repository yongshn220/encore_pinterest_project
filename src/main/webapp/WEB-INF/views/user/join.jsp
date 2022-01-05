<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
		<div class="contatiner">
			<div class="row">
				<div class="header">
					<h1>
						<a href="#">
							<em><img alt="logo" src="./images/logo"></em>
						</a>
					</h1>
					<nav class="nav"></nav>
						<ul>
							<li><a href="#">로그인</a></li>
						</ul>
				</div>
			</div>
		</div>
	</header>
	<!-- //header -->
	
	<section id="join">
	<div class="title"><h3>회원가입</h3></div>
	<div class="join">
		<div class="contatiner">
			<div class="row">
				<div class="join_insert">
					<form action="/user/join" method="post">
						<ul>
							<li>id:<input type="text" name="id" id="id"></li>
							<li><input type="button"value="중복체크" onclick="idCheck()"></li>
							<li><div id="res"></div></li>
							<li>pwd:<input type="password" name="pwd"></li>
							<li>name:<input type="text" name="name"></li>
							<li>email:<input type="email" name="email"></li>
							<li>gender:<input type="radio" name=gender value="xx">남
							<input type="radio" name=gender value="xy">여</li>
							<li>age:<input type="number" name=age></li>
							<li><input type="submit" value="회원가입"></li>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
	</section>

</body>
</html>