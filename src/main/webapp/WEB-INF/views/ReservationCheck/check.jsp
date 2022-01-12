<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>판매자 ${sessionScope.loginid }가 등록한 상품</h3>
<table border="1">
<tr><th>img</th><th>title</th><th>price</th><th>seller</th></tr>
<c:forEach var="r" items="${list }">
<tr><td><img src="///${p.img_path }" width="100" height="100"></td>

</c:forEach>
</table>
</body>
</html>

