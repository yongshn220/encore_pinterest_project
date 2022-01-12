<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/user/date.css">
<title>TIME 예약</title>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript">
	const xhttp = new XMLHttpRequest();
	xhttp.onload = function(){
		let obj = JSON.parse(xhttp.responseText);
		let arr = obj.tl;
		let txt = "";
		for(let i=0; i<arr.length; i++){				
			txt+="<span><a href='/Seat/Selecet/?id="+arr[i].id+"'><input type='button' class='"+i+"' value='"+arr[i].timeRoom+"'></a></span><br>";
		}
		document.getElementById("listT").innerHTML = txt;
	}
	
	const timelist = (id) => {
		let param = id;
		xhttp.open("GET", "/Reservation/DateSelection/timelist?id="+param);
		xhttp.send();
	}
	
	function showDetail() {
		document.querySelector(".reserve_right").style.display="block";
		document.querySelector(".map_button").style.border="solid 1px red";
	}
	
	$(document).ready(function(){
		$(".map_button2").click(function(){
			alert("공사 중 입니다.");
		});
	});
</script>
</head>

<body>
	<header id="header">
		<div class="container">
			<div class="row">
				<div class="header">
					<h1>
						<a href="Home/list">
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
							<li><a href="/User/login">로그인</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- //header -->
	
	<!-- //movie -->
	<section id="movie">
		<div class="movie">
		<h2 class="ir_so">선택 영화</h2>
			<div class="container">
				<div class="row">
					<div class="content">
						<div class="movie_left">
							<h3>
								<img src="${m.img_path }">
							</h3>
						</div>
						<div class="movie_right">
							<div>
								<span class="movie_title">
								${m.title }
								</span>
							</div>
							<div class="detail">
								<div>
									<span class="movie_act">
									${m.act_director }
									</span>
								</div>
								<div>
									<span class="movie_content">
									${m.content }
									</span>
								</div>
								<div>
									<span class="movie_genre">
									${m.genre_bas }
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</section>
	<!-- //movie -->

	<section id="reserve">
		<div class="reserve">
		<h2 class="reserve_title">────────────── 영화 예매 ──────────────</h2>
			<div class="container">
				<div class="row">
					<div class="reserve_left">
						<img class="map_img" alt="map" src="/images/map.png">
						<div class="text">
							<input class="map_button" type="button" value="서울특별시" onclick="showDetail()">
						</div>
						<div class="text2">
							<input class="map_button2" type="button" value="인천광역시" >
						</div>
						<div class="text3">
							<input class="map_button2" type="button" value="대전광역시" >
						</div>
						<div class="text4">
							<input class="map_button2" type="button" value="광주광역시" >
						</div>
						<div class="text5">
							<input class="map_button2" type="button" value="대구광역시" >
						</div>
						<div class="text6">
							<input class="map_button2" type="button" value="울산광역시" >
						</div>
						<div class="text7">
							<input class="map_button2" type="button" value="부산광역시" >
						</div>
					</div>
					<div class="reserve_right">
						<div class="list">
							<div class="list_date">
							<c:if test="${empty list}">
							개봉전 영화입니다.
							</c:if>
							<c:if test="${not empty list }">
								<c:forEach var="ld" items="${list }">
									<span>
									<input type="button" value="${ld.date }" onclick="timelist(${ld.id })">
									</span>
									<br>
								</c:forEach>
							</c:if>
							</div>
							<div class="list_time" id="listT">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	

</body>
</html>