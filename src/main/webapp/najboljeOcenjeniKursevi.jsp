<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<form action="/Talk/korisnikController/getNajboljiKursevi" method="get">
			<table border="1">
				<tr>
					<th>Naziv kursa</th>
					<th>Komentar</th>
					<th>Ocena</th>
				</tr>
				
				<c:forEach var="k" items="${najboljiKursevi}">
					<tr>
						<td>${k.naziv}</td>
						<td>${k.komentar}</td>
						<td>${k.ocena}</td>
					</tr>
				</c:forEach>
			</table>
	</form>
</body>
</html>