<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="java.util.Objects"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>完了</title>
</head>
<body>

<%

String message = (String) request.getAttribute("message");

message = Objects.toString(message, "");

%>

	<h1><%=message %></h1>
	
	<button onclick="location.href='<%=request.getContextPath() %>/form'">戻る</button>


</body>
</html>
</body>
</html>