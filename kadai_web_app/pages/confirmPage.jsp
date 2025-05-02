<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.Objects"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確認</title>

<style type="text/css">
table {
	border: solid 2px black;
	margin: 10px 0;
}

tr, th {
	border: solid 2px black;
}

td {
	border: solid 2px black;
	min-width: 200px;
}
</style>

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

	<form action="<%=request.getContextPath()%>/save" method="post">

		<h1>入力内容をご確認ください</h1>
		<p>問題がなければ「確定」、修正する場合は「キャンセル」を押してください</p>

		<table>
			<tr>
				<th>氏名</th>
				<td><%=name%></td>
			<tr>
			<tr>
				<th>メールアドレス</th>
				<td><%=email%></td>
			<tr>
			<tr>
				<th>住所</th>
				<td><%=address%></td>
			<tr>
			<tr>
				<th>電話番号</th>
				<td><%=phone_number%></td>
			<tr>
		</table>

		<input type="submit">
	</form>
	
	
	
	<form action="<%=request.getContextPath()%>/form" method="get">


		<table hidden>
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

		<input type="submit" value="キャンセル">

	</form>


</body>
</html>