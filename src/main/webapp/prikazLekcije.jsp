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
	
	<c:out value="${lekcija.naslov}"></c:out><br><br>
	<c:if test="${not empty lekcija.tekst }">
		<c:out value="${lekcija.tekst }"></c:out>
	</c:if><br><br>
	<c:if test="${not empty lekcija.fajl }">
		<img src="/Talk/polaznikController/prikazFajla?idLekcija=${lekcija.idLekcija}"/>
	</c:if>

</body>
</html>