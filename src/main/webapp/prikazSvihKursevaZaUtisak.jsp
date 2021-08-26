<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<form action="/Talk/korisnikController/getKursevUtisak" method="get">
		<c:if test="${!empty utisak}">
			<select name="idKurs">
				<c:forEach items="${utisak}" var="u">
					<option value="${u.idKurs}">${u.naziv}</option>
				</c:forEach>
			</select>
			<br>
			<br>
			<input type="submit" value="Prikazi Utisak kursa">
			<br>

		</c:if>
		<c:if test="${!empty k}">
			<table border="1">
				<tr>
					
					<th>Utisak kursa</th>
				</tr>

				<c:forEach var="k" items="${kursic}">
					<tr>
						<td>${k}</td>
						
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</form>
</body>
</html>

