<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>앨범 상세 정보</title>
</head>
<body>
    <h2>앨범 상세 정보</h2>
    <table border="1">
        <tr>
            <th>제목</th>
            <td><%= request.getParameter("title") %></td>
        </tr>
        <tr>
            <th>아티스트</th>
            <td><%= request.getParameter("artist") %></td>
        </tr>
        <tr>
            <th>출시연도</th>
            <td><%= request.getParameter("releaseYear") %></td>
        </tr>
    </table>
    <br>
    <!-- 목록으로 돌아가는 버튼 -->
    <button onclick="location.href='makeData.jsp?infoType=<%= request.getParameter("infoType") %>'">목록</button>
</body>
</html>
