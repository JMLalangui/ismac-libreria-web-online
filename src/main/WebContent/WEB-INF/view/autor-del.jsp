<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Autor</h1>
		
		<form action="del" method="get">

			<input type="hidden" id="idAutor" name="idAutor" value="${autor.idAutor}"/>
			<strong>¿Desea eleminar el registro?</strong>
		
			<button type="submit" >eliminar</button>
			
		</form>
</body>
</html>