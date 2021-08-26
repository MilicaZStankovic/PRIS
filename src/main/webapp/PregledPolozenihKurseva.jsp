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
	
	<form action="/Talk/polaznikController/prikazPolozenihKurseva" method="get">
		Pregled polozenih kurseva za polaznika: ${polaznik.username }<br><br>
		<c:if test="${!empty kursevi}">
			<table border="1">
				<tr>
					<th>Naziv kursa</th>
				</tr>
				
				<c:forEach items="${kursevi}" var="k">
					<tr>
						<td>${k.naziv }</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</form>
	${poruka }
</body>
</html>