<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>세션에 값 저장</title>
</head>
<body>
    <h1>세션에 값 저장</h1>
    <%
        // 세션 객체를 가져옵니다. 기본적으로 세션이 없으면 생성하기 때문에
        // false 옵션을 주어서 없으면 null 반환된다.
        HttpSession currentSession = request.getSession(false);

        String userId = "dream";        
        currentSession.setAttribute("userId", userId);
    %>
    <a href="getSession.jsp">세션에 저장된 값 확인하기</a>
</body>
</html>
