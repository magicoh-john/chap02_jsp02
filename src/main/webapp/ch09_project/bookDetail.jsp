<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 상세 정보</title>
</head>
<body>
    <h2>도서 상세 정보</h2>
    <table border="1">
        <tr>
            <th>제목</th>
            <td><%= request.getParameter("title") %></td>
        </tr>
        <tr>
            <th>저자</th>
            <td><%= request.getParameter("author") %></td>
        </tr>
        <tr>
            <th>출판연도</th>
            <td><%= request.getParameter("publicationYear") %></td>
        </tr>
    </table>
    <br>
    <!-- 목록으로 돌아가는 버튼 -->
    <button onclick="location.href='makeData.jsp?infoType=<%= request.getParameter("infoType") %>'">목록</button>
</body>
</html>
