<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.net.*, com.javalab.vo.Movie" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>영화 목록</title>
</head>
<body>
	<%
	    // movieList
	    List<Movie> movieList = (List<Movie>) request.getAttribute("movieList");
	    String infoType = (String)request.getAttribute("infoType");
	%>
	<h1>영화 목록</h1>
	<table border="1">
	    <tr>
	        <th>제목</th>
	        <th>감독</th>
	        <th>출시연도</th>
	    </tr>
	    <%
	        for (Movie movie : movieList) {
	            // 쿼리스트링 생성
	            String queryString = "title=" + URLEncoder.encode(movie.getTitle(), "UTF-8") +
	                                 "&director=" + URLEncoder.encode(movie.getDirector(), "UTF-8") +
	                                 "&releaseYear=" + movie.getReleaseYear() +
	                                 "&infoType=" + URLEncoder.encode(infoType, "UTF-8");
	    %>
	    <tr>
	        <td><a href="movieDetail.jsp?<%= queryString %>"><%= movie.getTitle() %></a></td>
	        <td><%= movie.getDirector() %></td>
	        <td><%= movie.getReleaseYear() %></td>
	    </tr>
	    <%
	        }
	    %>
	</table>

	<button onclick="location.href='selectInfo.jsp?infoType=<%= infoType %>'">컨텐츠선택</button>
	
</body>
</html>
