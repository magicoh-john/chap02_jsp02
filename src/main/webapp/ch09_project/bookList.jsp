<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.net.*, com.javalab.vo.Book" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 목록</title>
</head>
<body>
	<%
	    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
	    String infoType = (String)request.getAttribute("infoType");
	%>
	<h1>도서 목록</h1>
	<table border="1">
	    <tr>
	        <th>제목</th>
	        <th>저자</th>
	        <th>출판연도</th>
	    </tr>
	    <%
	        for (Book book : bookList) {
	            String queryString = "title=" + URLEncoder.encode(book.getTitle(), "UTF-8") +
	                                 "&author=" + URLEncoder.encode(book.getAuthor(), "UTF-8") +
	                                 "&publicationYear=" + book.getPublicationYear() +
	                                 "&infoType=" + URLEncoder.encode(infoType, "UTF-8");
	    %>
	    <tr>
	        <td><a href="bookDetail.jsp?<%= queryString %>"><%= book.getTitle() %></a></td>
	        <td><%= book.getAuthor() %></td>
	        <td><%= book.getPublicationYear() %></td>
	    </tr>
	    <%
	        }
	    %>
	</table>
	<button onclick="location.href='selectInfo.jsp?infoType=<%= infoType %>'">컨텐츠선택</button>
</body>
</html>
