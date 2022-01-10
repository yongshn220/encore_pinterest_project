<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="/home/main.css">
<title>영화 그 이상의 감동. ElVOM</title>
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
						<input type="text" class="search-txt" name="searchForm"
							placeholder="검색어를 입력하세요"> <a class="search-btn"
							href="/Home/getbytitle" > <i class="fas fa-search"></i>
						</a>
					</div>

				</div>
			</div>
		</div>
	</header>



	<!-- 무비차트 -->
	<section id="cont">
		<div class="contents">
			<h3>
				<a href="/Home/list">MovieChart</a>
			</h3>

			<div class="movieChartScreen">

				<div class="movieChart_list">

					<!-- 스파이더맨 -->
					<div class="slide_movie">
						<div class="img_wrap" data-scale="false">
							<a href="/Reservation/DateSelection/main"><img src="../images/posters/1.jpg"
								alt="스파이더맨-노 웨이 홈" onerror="errorImage(this)"
								style="width: 280px; height: 350px"></a>


							<div class="movieAge">
								<img src="../images/posters/grade-12.png" alt="12세 이상세">
							</div>

						</div>
						<div class="movie_info">
							<strong class="movieName">스파이더맨-노 웨이 홈</strong> <span>예매율
								34.5%</span>
						</div>
					</div>


					<!-- 경관의피 -->
					<div class="slide_movie">
						<div class="img_wrap" data-scale="false">
							<img src="../images/posters/2.jpg" alt="경관의 피"
								onerror="errorImage(this)" style="width: 280px; height: 350px">
							<div class="movieAge">
								<img src="../images/posters/grade-15.png" alt="15세 이상세">


							</div>



						</div>
						<div class="movie_info">
							<strong class="movieName">경관의 피</strong> <span>예매율 24.9%</span>
						</div>
					</div>


					<!-- 씽2게더 -->
					<div class="slide_movie">
						<div class="img_wrap" data-scale="false">
							<img src="../images/posters/3.jpg" alt="씽2게더"
								onerror="errorImage(this)" style="width: 280px; height: 350px">
							<div class="movieAge">
								<img src="../images/posters/grade-all.png" alt="전체세">


							</div>


						</div>
						<div class="movie_info">
							<strong class="movieName">씽2게더</strong> <span>예매율 20.5%</span>
						</div>
					</div>

					<!-- 해피뉴이어 -->
					<div class="slide_movie">
						<div class="img_wrap" data-scale="false">
							<img src="../images/posters/4.jpg" alt="해피 뉴 이어"
								onerror="errorImage(this)" style="width: 280px; height: 350px">
							<div class="movieAge">
								<img src="../images/posters/grade-12.png" alt="12세 이상세">


							</div>


						</div>
						<div class="movie_info">
							<strong class="movieName">해피 뉴 이어</strong> <span>예매율 3.7%</span>
						</div>
					</div>

					<!-- 킹스맨 -->
					<div class="slide_movie">
						<div class="img_wrap" data-scale="false">
							<img src="../images/posters/5.jpg" alt="킹스맨-퍼스트 에이전트"
								onerror="errorImage(this)" style="width: 280px; height: 350px">
							<div class="movieAge">
								<img src="../images/posters/grade-19.png" alt="청소년 관람불가세">


							</div>


						</div>
						<div class="movie_info">
							<strong class="movieName">킹스맨-퍼스트 에이전트</strong> <span>예매율
								3.6%</span>
						</div>
					</div>

					<!-- 드라이브 마이카 -->
					<div class="slide_movie">
						<div class="img_wrap" data-scale="false">
							<img src="../images/posters/6.jpg" alt="드라이브 마이 카"
								onerror="errorImage(this)" style="width: 280px; height: 350px">
							<div class="movieAge">
								<img src="../images/posters/grade-15.png" alt="15세 이상세">


							</div>


						</div>
						<div class="movie_info">
							<strong class="movieName">드라이브 마이 카</strong> <span>예매율
								1.7%</span>
						</div>
					</div>
			
				<!-- 피드백 -->
				<div class="slide_movie">
					<div class="img_wrap" data-scale="false">
						<img src="../images/posters/7.jpg" alt="피드백"
							onerror="errorImage(this)" style="width: 280px; height: 350px">
						<div class="movieAge">
							<img src="../images/posters/grade-19.png" alt="청소년 관람불가세">


						</div>

					</div>
					<div class="movie_info">
						<strong class="movieName">피드백</strong> <span>예매율 1.5%</span>
					</div>
				</div>

				<!-- 매트릭스 -->
				<div class="slide_movie">

					<div class="img_wrap" data-scale="false">
						<img src="../images/posters/8.jpg" alt="매트릭스-리저렉션"
							onerror="errorImage(this)" style="width: 280px; height: 350px">
						<div class="movieAge">
							<img src="../images/posters/grade-15.png" alt="15세 이상세">

						</div>


					</div>
					<div class="movie_info">
						<strong class="movieName">매트릭스-리저렉션</strong> <span>예매율 0.7%</span>
					</div>
				</div>


				<!-- 하우스오브구찌 -->
				<div class="slide_movie">
					<div class="img_wrap" data-scale="false">
						<img src="../images/posters/9.jpg" alt="하우스 오브 구찌"
							onerror="errorImage(this)" style="width: 280px; height: 350px">
						<div class="movieAge">
							<img src="../images/posters/grade-15.png" alt="15세 이상세">

						</div>

					</div>
					<div class="movie_info">
						<strong class="movieName">하우스 오브 구찌</strong> <span>예매율 0.4%</span>
					</div>
				</div>

				<!-- 프랑스 -->
				<div class="slide_movie">
					<div class="img_wrap" data-scale="false">
						<img src="../images/posters/10.jpg" alt="프랑스"
							onerror="errorImage(this)" style="width: 280px; height: 350px">
						<div class="movieAge">
							<img src="../images/posters/grade-12.png" alt="12세 이상세">

						</div>

					</div>
					<div class="movie_info">
						<strong class="movieName">프랑스</strong> <span>예매율 0.1%</span>
					</div>

				</div>

			</div>
		</div>



	</section>
</body>

</html>
