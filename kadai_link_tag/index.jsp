<!-- ウェルガムページ -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="<%= request.getContextPath() %>/sending">名前「侍太郎」をservletに送信</a>

<p>${message}</p>

</body>
</html>