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
	<form action = "/Talk/polaznikController/getDodajResenje" method ="post">
		Izaberite pitanje za koje dodajete resenje:
		<select name="idPitanja">
			<c:forEach  var="p" items="${pitanja}"  >
				<option value="${p.idPitanje}">${p.tekst}</option>
			</c:forEach>
		</select> <br><br>
		Unesite resenje izabranog pitanja:<input type = "text" name ="tekst">
		<br>
		<br>
		<input type = "submit" value = "Unesi resenje pitanja">
	
	
	</form>
</body>
</html>