<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    if (id.equals("java") && password.equals("1234")) {
        // 세션에 아이디 저장
        HttpSession currentSession = request.getSession();
        currentSession.setAttribute("userId", id);
        // welcome.jsp로 이동
        response.sendRedirect("welcome.jsp");
    } else {
        // 로그인 실패 시 HTML로 경고 메시지와 뒤로 돌아가기 링크 제공
%>
<!DOCTYPE html>
<html>
<head><title>로그인 실패</title></head>
<body>
    <script type="text/javascript">
        alert('아이디와 비밀번호를 확인하세요');
    </script>
    <p>아이디와 비밀번호를 확인하세요.</p>
    <a href="loginForm.jsp">뒤로 돌아가기</a>
</body>
</html>
<%
    }
%>
