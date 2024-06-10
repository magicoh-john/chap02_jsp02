<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.net.*, com.javalab.vo.Album" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>앨범 목록</title>
</head>
<body>
	<%
	    List<Album> albumList = (List<Album>) request.getAttribute("albumList");
	    String infoType = (String)request.getAttribute("infoType");
	%>
	<h1>앨범 목록</h1>
	<table border="1">
	    <tr>
	        <th>제목</th>
	        <th>아티스트</th>
	        <th>출시연도</th>
	    </tr>
	    <%
	        for (Album album : albumList) {
	            String queryString = "title=" + URLEncoder.encode(album.getTitle(), "UTF-8") +
	                                 "&artist=" + URLEncoder.encode(album.getArtist(), "UTF-8") +
	                                 "&releaseYear=" + album.getReleaseYear() +
	                                 "&infoType=" + URLEncoder.encode(infoType, "UTF-8");
	    %>
	    <tr>
	        <td><a href="albumDetail.jsp?<%= queryString %>"><%= album.getTitle() %></a></td>
	        <td><%= album.getArtist() %></td>
	        <td><%= album.getReleaseYear() %></td>
	    </tr>
	    <%
	        }
	    %>
	</table>
	<button onclick="location.href='selectInfo.jsp?infoType=<%= infoType %>'">컨텐츠선택</button>
</body>
</html>
