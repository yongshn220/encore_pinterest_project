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
	<!--상단-->
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
					<!-- 검색창 -->
					<link rel="stylesheet"
						href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
					<!-- 돋보기아이콘 -->
					<div class="search-box">
						<input type="text" class="search-txt" name=""
							placeholder="검색어를 입력하세요"> <a class="search-btn"
							href="디테일페이지"> <i class="fas fa-search"></i>
						</a>
					</div>

				</div>
			</div>
		</div>
	</header>

	<section id=movie_detail>
		<div class=detail>
			
			
					<div class="left">
					<h2>
						<img src="/images/posters/${img_path }" width="300" height="350">
					</h2>
					</div>
					<div class="right">
						<div class="movie_info">
							<form action=" " method="post">
							
							
							<label for="title"></label>
								<span class="box">
									<input type="text" name="title" value="${m.title }">
								</span>
								
								
							<label for="act_director">act_director</label>
								<span class="box">
								<input type="" name="act_director"  value="${m.act_director }">
								</span>
								
								<label for="genre_bas">genre_bas</label>
								<span class="box">
								<input type="text" name="genre_bas" value="${m.genre_bas }">
								</span>
								
								<label for="open_date">open_date</label>
								<span class="box">
								<input type="text" name="open_date" value="${m.open_date }">
								</span>
								
								<label for="content">content</label>
								<span class="box">
								<input type="text" name="content" value="${m.content }">
								</span>
								
								<label for="screen_flag">screen_flag</label>
								<span class="box">
								<input type="text" name="screen_flag" value="${m.screen_flag }">
								</span>
							
								
								
								<span class="box int_button"><input type="submit"  value="예약">
								</span>
							</form>	
						</div>
						
					
					</div>
	
	</section>
</body>
</html>

