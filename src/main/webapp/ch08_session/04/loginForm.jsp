<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%
		// 현재 웹어플리케이션의 컨텍스트 패스(진입점) 얻기
		String contextPath = request.getContextPath(); 
	%>

<html>
<head><title>로그인폼</title></head>
<body>

	<h3>로그인</h3>
	
	<form action="<%= contextPath %>/ch08_session/04/login.jsp" method="post">
		아이디 <input type="text" name="id" size="10"><br>
		암호 <input type="password" name="password" size="10"><br>
		<input type="submit" value="로그인">
	</form>

</body>
</html>
