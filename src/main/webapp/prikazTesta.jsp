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

        <c:out value="${test.naslov}"></c:out>
        <br>
        <br>

        <table border="1">
            <tr>
                <th>Pitanje</th>
                <th>Odgovor</th>

            </tr>

            <c:forEach var="p" items="${pitanjaTesta}">
                <tr>
                    <td>${p.tekst }</td>
                    <td><c:forEach var="odg" items="${p.odgovors}">
                            <c:if test="${odg.tacnostOpcije1 == 1 }">${odg.opcija1 }</c:if>
                            <c:if test="${odg.tacnostOpcije2 == 1}">${odg.opcija2 }</c:if>
                            <c:if test="${odg.tacnostOpcije3 == 1}">${odg.opcija3}</c:if>
                            <c:if test="${not empty odg.tekst }">${odg.tekst }</c:if>
                        </c:forEach>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form><br><br>
	Osvojeni broj poena na testu je: ${osvojeniPoeni}
</body>
</html>