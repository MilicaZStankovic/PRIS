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
	
	<form action="/Talk/predavacController/dodajOdgovorOpcije" method="post">
		Unesite naziv testa za koji dodajete pitanje: <input type="text" name="testImeO"><br><br>
		Odaberite pitanje za koje dodajete odgovor:<br>
		<select name="idPitanjeO">
			<c:forEach items="${pitanjaO}" var="i" >
					<option value="${i.idPitanje}">${i.tekst}</option>
				</c:forEach>
		</select><br><br>
		* Tacnost odgovora: za tacan odgovor unesite 1, za netacan 0 *<br><br>
		Unesite opciju 1: <input type="text" name="opcija1"><br><br>
		Unesite tacnost opcije 1:<input type="text" name="tacnostO1"><br><br><br>
		Unesite opciju 2: <input type="text" name="opcija2"><br><br>
		Unesite tacnost opcije 2:<input type="text" name="tacnostO2"><br><br><br>
		Unesite opciju 3: <input type="text" name="opcija3"><br><br>
		Unesite tacnost opcije 3:<input type="text" name="tacnostO3"><br><br><br>
		<input type="submit" value="Dodaj odgovor">
	</form>
	${porukaO}
</body>
</html>