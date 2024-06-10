<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javalab.jsp.Member" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>세션에 Member 객체 저장</title>
</head>
<body>
    <h1>세션에 Member 객체 저장</h1>
    <%
        // 세션 객체를 가져옵니다.
        HttpSession currentSession = request.getSession();

        // Member 객체를 생성하고 값 설정
        Member member = new Member("dream", "1234", "John Smith", "john@example.com");
        
        // Member 객체를 세션에 저장합니다.
        currentSession.setAttribute("member", member);
        
        out.println("<p>Member 객체를 세션에 저장했습니다: " + member + "</p>");
    %>
    <a href="getMember.jsp">저장된 Member 객체 확인하기</a>
</body>
</html>
