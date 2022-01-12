<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="/home/detail.css">
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
					<form action="/Home/getbytitle" method="post">
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



	<!-- detail -->
	<section id="detail">
		<div class="movieDetail">
			<h3>영화상세</h3>
			<div class="content">

				<div class="leftBox">
					<img src="${m.img_path }" style="width: 185px; height: 260px;">
				</div>

				<div class="RightBox">
					<div class="title">
						<a href="/Home/detail/${m.id }">${m.title }</a>
					</div>
					<div class="spec">
						<dl>
							<dd>${m.act_director }</dd>
							<dd>${m.genre_bas }</dd>
							<dd>개봉 : ${m.open_date }</dd>
						</dl>
					</div>

					<span> <a class="link-reservation"
						href="/Reservation/DateSelection/main"></a>
					</span>
				</div>

				<div class="Bottom">
					<p>${m.content }</p>

					<div class="video">
						<iframe width="660" height="415" src="${m.video }"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>

					</div>
				</div>

			</div>
		</div>
	</section>
</body>
</html>























