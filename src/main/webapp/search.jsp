<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function checkForm() {
		
		let f = document.searchForm // 너무 길기 때문에 f로 변수 설정
		
		if(f.searchType.selectedIndex == 0) {
			alert('검색 항목을 선택하세요')
			f.searchType.focus()
			return false // submit은 날라가면 안 되기 때문에 리턴 false
		}
		
		if(f.searchWord.value == '') {
			alert('검색어를 입력하세요')
			f.searchWord.focus() // focus가 검색어쪽으로 옮겨가게
			return false
		}
		
		if(f.searchWord.value.length < 2) {
			alert('검색어는 2글자 이상 입력하세요')
			f.searchWord.focus()
			return false // 입력한 글자가 한글자일 때
		}
		
		return true // 모두 문제가 없다면 실행
	}
</script>
</head>
<body>
	<form action="http://www.naver.com" name="searchForm"
			onsubmit="return checkForm()">
		<select name="searchType">
			<option>선택하세요</option>
			<option>제목</option>
			<option>작성자</option>
		</select>
		<input type="text" name="searchWord">
		<input type="submit" value="검색">
	</form>
</body>
</html>
