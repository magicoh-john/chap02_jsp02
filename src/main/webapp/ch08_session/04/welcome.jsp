<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<html>
<head><title>환영합니다</title></head>
<body>
<%
    // 세션에서 사용자 아이디 가져오기
    HttpSession currentSession = request.getSession(false);
	String userId = ""; 
	if (currentSession != null){
		userId = (String) currentSession.getAttribute("userId");	
	}

    if (userId != null) {
%>
    <h1>환영합니다, <%= userId %>님</h1>
    <button type="button" id="btnLogout">로그아웃</button>
<%
    } else {
%>
    <a href="loginForm.jsp">로그인 페이지로 이동</a>
<%
    }
%>

<script>
	const id = document.querySelector("#btnLogout");
	id.addEventListener("click", function(){
	window.location.href = "logout.jsp";
});
</script>
</body>
</html>
