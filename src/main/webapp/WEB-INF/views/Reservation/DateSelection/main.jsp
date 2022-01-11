<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TIME 예약</title>
<script type="text/javascript">

const xhttp = new XMLHttpRequest();
xhttp.onload = function(){
	if(xhttp.readyState==4){
		if(xhttp.status==200){
			let obj = JSON.parse(xhttp.responseText);
			let arr = obj.tl;
			let txt = "";
			for(let i=0; i<arr.length; i++){				
				txt+="<span><a href='/Seat/?id="+arr[i].id+"'><input type='button' class='"+i+"' value='"+arr[i].timeRoom+"'></a></span>";
			}
			document.getElementById("listT").innerHTML = txt;
		}else{
			alert("응답 error code1:"+xhttp.status);
		}
	}else{
		alert("요청 error code2:"+xhttp.readState);
	}
}

const timelist = (id) => {
	let param = id;
	xhttp.open("GET", "/Reservation/DateSelection/timelist?id="+param);
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
		<h2>date 예약</h2>
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
								<span class="moive_title">
								${m.title }
								</span>
							</div>
							<div class="detail">
								<div>
									<span class="moive_act">
									${m.act_director }
									</span>
								</div>
								<div>
									<span class="moive_content">
									${m.content }
									</span>
								</div>
								<div>
									<span class="moive_genre">
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
		<h2>영화 예매</h2>
			<div class="container">
				<div class="row">
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
							</c:forEach>
						</c:if>
						</div>
						<div class="list_time" id="listT">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
</body>
</html>