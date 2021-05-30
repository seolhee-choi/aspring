<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 에러메세지를 클라이언트에게 전달하는 JSP 문서 --%>
<%-- =>[로그인페이지이동] 누르면 로그인 정보 입력페이지(login)로 이동 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring</title>
<style type="text/css">
body{
	text-align: center;
	
}
.message{
	color: red;
	font-size: 1.5em;
}
</style>
</head>
<body>
	<h1>에러 페이지</h1>
	<hr>
	<p class="message">프로그램 실행에 예기치 못한 오류가 발생되었거나 비정상적인 방법으로 프로그램이
	실행되어 오류가 발생했습니다.</p>
	<button type="button" onclick="location.href='${pageContext.request.contextPath}/';">메인 페이지 이동</button>
</body>
</html>