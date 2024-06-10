<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>세션 정보</title>
</head>
<body>
    <h1>세션 정보</h1>
    <%
        // 세션 객체를 가져옵니다.
        HttpSession ses = request.getSession(); // session은 자동으로 주어지는 기본 객체이름으로 변수로 사용 불가

        // 세션 ID를 가져옵니다.
        String sessionId = ses.getId();

        // 마지막 접근 시간을 가져옵니다.
        long lastAccessedTime = ses.getLastAccessedTime();

        // 마지막 접근 시간을 읽기 좋은 형식으로 변환합니다.
        java.util.Date lastAccessedDate = new java.util.Date(lastAccessedTime);

        // 세션 정보를 출력합니다.
    %>
    <p>세션 ID: <%= sessionId %></p>
    <p>마지막 접근 시간: <%= lastAccessedDate %></p>
</body>
</html>
