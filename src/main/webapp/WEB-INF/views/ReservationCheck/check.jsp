<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>${sessionScope.loginid}님의 예매 완료 내역</h3>

<div>${r.time.timeRoom }</div>
<div>${r.adult_num }</div>
<div>${r.child_num }</div>
<div>${r.price }</div>

</body>
</html>

