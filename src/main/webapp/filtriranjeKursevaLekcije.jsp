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
	
	<form action="/Talk/korisnikController/filtriranjeLekcije" method="get">
	
		Unesite broj lekcija: <input type="text" name="brLekcija"><br><br>
		
		<input type="submit" value="Potvrdi"><br><br><br>
	
	</form>
	
	<form action="/Talk/korisnikController/filtriranjeLekcije" method="get">
		<table border="1">
			<tr><th>Naziv kursa</th></tr>
			<c:forEach items="${filtriraniKLekcija }" var="f">
				<tr>
					<td>${f.naziv }</td>
				</tr>
			</c:forEach>
		</table>
	</form>


</body>
</html>