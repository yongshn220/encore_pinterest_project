<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<h3>${sessionScope.loginid}님의 예매 완료 내역</h3>

<div>${r.time.timeRoom }</div>
<div>${r.adult_num }</div>
<div>${r.child_num }</div>
<div>${r.price }</div>

</body>
</html>

