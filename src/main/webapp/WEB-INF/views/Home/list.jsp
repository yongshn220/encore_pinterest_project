<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
					<form action="/Home/getbytitle/${m.title }" method="post">
						<div class="search-box">
							<input type="text" class="search-txt" name="word"
								placeholder="검색어를 입력하세요"> <a class="search-btn"> <i
								class="fas fa-search"></i>
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</header>

	<!--list-->
	<h3>MovieChart</h3>
	<table border="1">
		<c:forEach var="m" items="${list }">

			<div class="movieImg">
				<h3>
					<img src="${m.img_path }" style="width: 280px; height: 350px">
				</h3>
			</div>
			<div class="movieInfo">
				<div>
					<span class="moiveTitle"><a href="/Home/detail/${m.id }">${m.title }</a></span>
				</div>
				<div class="movieInfoDetail">
					<div>
						<span class="moiveAct"> ${m.act_director } </span>
					</div>
					<div>
						<span class="moiveContent"> ${m.content } </span>
					</div>
					<div>
						<span class="moiveGenre"> ${m.genre_bas } </span>
					</div>
				</div>
			</div>

		</c:forEach>
	</table>

</body>
</html>