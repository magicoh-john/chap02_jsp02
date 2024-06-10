<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javalab.jsp.Member" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>세션에서 Member 객체 가져오기</title>
</head>
<body>
    <h1>세션에서 Member 객체 가져오기</h1>
    <%
        // 세션 객체를 가져옵니다. 세션이 없으면 생성하지 않음.
        HttpSession currentSession = request.getSession(false);

        // 세션에서 Member 객체를 가져옵니다.
        Member member = null;
        
        if (currentSession != null) {
            member = (Member) currentSession.getAttribute("member");
        }
    %>
    <%
        if (member != null) {
    %>
        <p>세션에 저장된 Member 객체:</p>
        <ul>
            <li>ID: <%= member.getId() %></li>
            <li>이름: <%= member.getName() %></li>
            <li>이메일: <%= member.getEmail() %></li>
        </ul>
    <%
        } else {
    %>
        <p>세션에 저장된 Member 객체가 없거나 세션이 존재하지 않습니다.</p>
    <%
        }
    %>
    <a href="setMember.jsp">세션에 Member 객체 저장하기 페이지로 돌아가기</a>
</body>
</html>
