<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정보 선택</title>
</head>
<body>
	<h3>문화 컨텐츠 선택(롬복 필요, 도메인 클래스 사용해서)</h3>
    <form action="makeData.jsp" method="post">
        <label for="infoType">정보 타입 선택:</label>
        <select name="infoType" id="infoType">
            <option value="movie">영화정보</option>
            <option value="book">도서정보</option>
            <option value="album">음반정보</option>
        </select>
        <input type="submit" value="다음">
    </form>
</body>
</html>
