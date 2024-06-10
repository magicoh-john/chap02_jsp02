<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>세션에서 값 가져오기</title>
</head>
<body>
    <h1>세션에서 값 가져오기</h1>
    <%
        // 세션 객체를 가져옵니다.
        HttpSession currentSession = request.getSession();

        String userId = null;
        
        // 세션이 존재하는지 확인합니다.
        if (currentSession != null) {
            userId = (String) currentSession.getAttribute("userId");
        }
    %>
    <%
        if (userId != null && !userId.isEmpty()) {
    %>
        <p>세션에 저장된 사용자 ID: <%= userId %></p>
    <%
        } else {
    %>
        <p>세션에 저장된 값이 없거나 세션이 존재하지 않습니다.</p>
    <%
        }
    %>
    <a href="setSession.jsp">세션 값 저장하기 페이지로 돌아가기</a>
</body>
</html>
