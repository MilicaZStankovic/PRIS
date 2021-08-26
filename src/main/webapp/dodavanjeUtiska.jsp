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
	<form action = "/Talk/polaznikController/dodajUtisak" method="post">
		
			<select name="idKurs">
				<c:forEach items="${kurseviPol}" var="k" >
					<option value="${k.idKurs}">${k.naziv}</option>
				</c:forEach>			
			</select><br><br>
		Utisak za izabrani kurs: <input type="text" name="utisak"> <br><br>
	
		<input type="submit" value="Dodaj utisak za izabrani kurs">
	
		<br><br>
		
	</form>
	${porukaKurs}

</body>
</html>