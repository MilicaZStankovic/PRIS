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
	
	<form action="/Talk/polaznikController/savePolaznik" method="post">
		Izaberite kurs na koji zelite da se prijavite: <br><br>
		
		<select name="idKurs">
			<c:forEach items="${kurseviP}" var="k" >
					<option value="${k.idKurs}">${k.naziv}</option>
				</c:forEach>
		</select> <br><br>
		
		<input type="submit" value="Prijavi se">
		
	</form>
	<br><br> ${porukaP}

</body>
</html>