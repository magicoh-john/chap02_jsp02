<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>영화 상세 정보</title>
</head>
<body>
    <h2>영화 상세 정보</h2>
    <table border="1">
        <tr>
            <th>제목</th>
            <td><%= request.getParameter("title") %></td>
        </tr>
        <tr>
            <th>director</th>
            <td><%= request.getParameter("director") %></td>
        </tr>
        <tr>
            <th>releaseYear</th>
            <td><%= request.getParameter("releaseYear") %></td>
        </tr>
    </table>
    <br>
    <!-- 목록으로 돌아가는 버튼 -->
	<button onclick="location.href='makeData.jsp?infoType=<%= request.getParameter("infoType") %>'">목록</button>

</body>
</html>
