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
	
	<form action="/Talk/polaznikController/prikazLekcijaKursa" method="get">
		
		<c:if test="${!empty kurseviPol}">
			<select name="idKurs">
				<c:forEach items="${kurseviPol}" var="k" >
					<option value="${k.idKurs}">${k.naziv}</option>
				</c:forEach>			
			</select><br><br>
			<input type="submit" value="Prikazi lekcije kursa"><br><br>
		</c:if>
		
		<c:if test="${!empty lekcijaK}">
			<table border="1">
				<tr>
					<th>Naziv lekcije</th>
					<th>Prikaz lekcije</th>
				</tr>
				
				<c:forEach var="i" items="${lekcijaK}">
					<tr>
						<td>${i.naslov }</td>
						<td><a href="/Talk/polaznikController/prikazLekcije?idLekcija=${i.idLekcija}">Prikazi</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</form>
	${poruka}
</body>
	
	
</body>
</html>