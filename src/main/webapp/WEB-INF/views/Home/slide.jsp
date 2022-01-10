<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>슬라이더</title>
<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script>
	$(function() {
		$('.movieSlide').slick({
			centerMode : true,
			centerPadding : '60px',
			slidesToShow : 3,
			responsive : [ {
				breakpoint : 768,
				settings : {
					arrows : false,
					centerMode : true,
					centerPadding : '40px',
					slidesToShow : 3
				}
			}, {
				breakpoint : 480,
				settings : {
					arrows : false,
					centerMode : true,
					centerPadding : '40px',
					slidesToShow : 1
				}
			} ]
		});
	});
</script>


</head>
<body>
	<div class="movieSlide">
		<div><img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84949/84949_320.jpg" style="width: 300px; height: 400px;" alt=""></div>
		<div>your content</div>
		<div>your content</div>
		<div>your content</div>
		<div>your content</div>
		<div>your content</div>
		<div>your content</div>
		<div>your content</div>
		<div>your content</div>
		<div>your content</div>
	</div>
</body>
</html>