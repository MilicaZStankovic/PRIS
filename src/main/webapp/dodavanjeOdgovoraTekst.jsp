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
	
	<form action="/Talk/predavacController/dodajOdgovorTekst" method="post">
		Unesite naziv testa za koji dodajete pitanje: <input type="text" name="testIme"><br><br>
		Odaberite pitanje za koje dodajete odgovor:<br>
		<select name="idPitanje">
			<c:forEach items="${pitanja}" var="i" >
					<option value="${i.idPitanje}">${i.tekst}</option>
				</c:forEach>
		</select><br><br>
		Unesite tekst odgovora: <input type="text" name="odgovorTekst"><br><br>
		
		<input type="submit" value="Dodaj odgovor">
	</form>
	${porukaO}
</body>
</html>