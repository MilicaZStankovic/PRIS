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
	
		<form action="/Talk/predavacController/getPolaznikovTest" method="get">
			 <select name="idPrijavljeniPolaznik">
				<c:forEach var="p" items="${polaznici }">
					<option value="${p.idPrijavljeniPolaznik}">${p.ime}  ${p.prezime}</option>
				</c:forEach>
			</select><br><br> 
			<input type="submit" value="Prikaz testa za izabranog polaznika">
		</form>
		
	

</body>
</html>