<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.Objects"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>入力</title>
</head>
<body>

	<%
	String name = (String) request.getAttribute("name");
	String email = (String) request.getAttribute("email");
	String address = (String) request.getAttribute("address");
	String phone_number = (String) request
	        .getAttribute("phone_number");

	name = Objects.toString(name, "");
	email = Objects.toString(email, "");
	address = Objects.toString(address, "");
	phone_number = Objects.toString(phone_number, "");
	%>

	<form action="<%=request.getContextPath()%>/confirm" method="post">


		<table>
			<tr>
				<th>氏名</th>
				<td><input type="text" name="name" value="<%=name%>"></td>
			<tr>
			<tr>
				<th>メールアドレス</th>
				<td><input type="text" name="email" value="<%=email%>"></td>
			<tr>
			<tr>
				<th>住所</th>
				<td><input type="text" name="address" value="<%=address%>"></td>
			<tr>
			<tr>
				<th>電話番号</th>
				<td><input type="text" name="phone_number"
					value="<%=phone_number%>"></td>
			<tr>
		</table>

		<input type="submit">

	</form>

</body>
</html>