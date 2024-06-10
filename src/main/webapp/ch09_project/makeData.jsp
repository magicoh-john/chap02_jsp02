<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.javalab.vo.Movie" %>
<%@ page import="com.javalab.vo.Book" %>
<%@ page import="com.javalab.vo.Album" %>
<%
    String infoType = request.getParameter("infoType");
    String nextPage = "";

    if ("movie".equals(infoType)) {
        List<Movie> movieList = new ArrayList<>();
        movieList.add(new Movie("영화 1", "Director 1", 2001));
        movieList.add(new Movie("영화 2", "Director 2", 2002));
        movieList.add(new Movie("영화 3", "Director 3", 2003));
        request.setAttribute("movieList", movieList);
        request.setAttribute("infoType", "movie");
        nextPage = "movieList.jsp";
    } else if ("book".equals(infoType)) {
        List<Book> bookList = new ArrayList<>();
        bookList.add(new Book("도서 1", "Author 1", 2001));
        bookList.add(new Book("도서 2", "Author 2", 2002));
        bookList.add(new Book("도서 3", "Author 3", 2003));
        request.setAttribute("infoType", "book");
        request.setAttribute("bookList", bookList);
        nextPage = "bookList.jsp";
    } else if ("album".equals(infoType)) {
        List<Album> albumList = new ArrayList<>();
        albumList.add(new Album("앨범 1", "Artist 1", 2001));
        albumList.add(new Album("앨범 2", "Artist 2", 2002));
        albumList.add(new Album("앨범 3", "Artist 3", 2003));
        request.setAttribute("infoType", "album");
        request.setAttribute("albumList", albumList);
        nextPage = "albumList.jsp";
    }
%>
<jsp:forward page="<%= nextPage %>" />
