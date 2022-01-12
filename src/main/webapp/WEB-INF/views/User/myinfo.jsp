<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/user/myinfo.css">
<title>내 정보</title>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript">

 	$(document).ready(function(){
		$(".edit_button").on("click", function(e){
			var returnValue = prompt('비밀번호를 입려해주세요.');
			if(returnValue==${u.pwd}){
				alert("인증에 성공하였습니다");
				document.getElementById("edit_inf").submit();
			}else{
				alert("비밀번호가 틀렸습니다. 확인 후 다시 이용해주세요.");
				e.preventDefault();
			};
		});
	});

</script>
<script type="text/javascript">

 	$(document).ready(function(){
		$(".out_button").on("click", function(e){
			var returnValue = prompt('비밀번호를 입려해주세요.');
			if(returnValue==${u.pwd}){
				var returnValue2 = confirm("정말로 탈퇴하시겠습니까? ㅠㅠ");
				if(returnValue2){
					
				}else{
					e.preventDefault();
				}
			}else{
				alert("비밀번호가 틀렸습니다. 확인 후 다시 이용해주세요.");
				e.preventDefault();
			};
		});
	});

</script>
<script type="text/javascript">

	window.onload = () => {
		if("${u.gender}"=="xy"){
			document.getElementById("gender").checked = true;
		}else {
			document.getElementById("gender2").checked = true;
		}
	}

</script>
</head>
<body>
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
<<<<<<< HEAD
							<li><a href="">영화 </a></li>
							<li><a href="">극장 </a></li>
							<li><a href="">예매 </a></li>
							<li><a href="">스토어 </a></li>
							<li><a href="">이벤트 </a></li>
							<li><a href="/User/login">로그인</a></li>
=======
							<li><a href="/User/login"> <img src="/images/login.png"
									alt="�α���"> <span>�α���</span>
							</a></li>
							<li><a href="/User/join"> <img src="/images/join.png"
									alt="ȸ������"> <span>ȸ������</span>
							</a></li>
							<li><a href="/User/myinfo"> <img src="/images/info.png"
									alt="MY ElVOM"> <span>MY ElVOM</span>
							</a></li>
>>>>>>> d587171a156514dc389035891f356d628c8bc7e3
						</ul>

					</nav>
					<!-- search -->
					<link rel="stylesheet"
						href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
					<!-- ����������� -->
					<form action="/Home/getbytitle" method="post">
					<div class="search-box">
						<input type="text" class="search-txt" name="title"
							placeholder="�˻�� �Է��ϼ���"> <a class="search-btn"> <i
							class="fas fa-search"></i>
						</a>
					</div>
					</form>
				</div>
			</div>
		</div>
	</header>
	<!-- //header -->
	
	<section id="myinfo">
		<div class="myinfo">
		<h2>내 정보 확인 및 수정</h2>
			<div class="contatiner">
				<div class="row">
					<div class="wrapper">
						<div class="myinfo_insert">
							<form id="edit_inf" action="/User/edit" method="post">
								<div>
									<h3><label for="id">아이디</label></h3>
									<span class="box int_id">
										<input type="text" name="id" id="id" class="int" size=20 value="${u.id }" readonly>
									</span>
								</div>
								<div class="pwd">
									<h3><label for="pwd">비밀번호</label></h3>
									<span class="box int_pwd">
									<input type="password" name="pwd" id="pwd" value="${u.pwd }" class="int" readonly>
									</span>
								</div>
								<div>
									<h3><label for="name">이름</label></h3>
									<span class="box int_name">
									<input type="text" name="name" id="name" value="${u.name }"  class="int" >
									</span>
								</div>
								<div>
									<h3><label for="email">이메일</label></h3>
									<span class="box int_email">
									<input type="email" name="email" id="email"  value="${u.email }" class="int" >
									</span>
								</div>
								<div>
									<h3><label for="gender">성별</label></h3>
									<span class="box int_gender">
									<input type="radio" name="gender" id="gender" value="xy">남성
									<input type="radio" name="gender" id="gender2" value="xx">여성
									</span>
								</div>
								<div>
									<h3 class="age"><label for="age">나이</label></h3>
									<span class="box int_age">
									<input type="number" name=age id="age" value="${u.age }" class="int" >
									</span>
								</div>
								<div class="buttons">
								<input class="edit_button" type="button" value="수정하기">
								<a href="/User/out" class="out_button" type="button">탈퇴하기</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //info -->
	
	<section id="myticket">
	<div class="title2"><h3>내 예약 확인</h3></div>
	<div class="myticket">
		<div class="contatiner">
			<div class="row">
				<div class="ticket_check">
					<c:if test="${empty list}">
						예매한 표가 없습니다.
					</c:if>
					<c:if test="${not empty list }">
						<ul>
						<c:forEach var="l" items="${r }">
							<li>"${r.reserve_id }","${r.user.name }", "${r.detial }", "${r.adult_num }", "${r.child_num }", "${r.price }", "${r.seats }"</li>
							<li><a href="#">예매취소</a>
						</c:forEach>
						</ul>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- //ticket -->

</body>
</html>











