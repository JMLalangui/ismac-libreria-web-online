<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>Categoria</h1>
		<form action="del" method="get">

			<input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}"/>
			<strong>¿Desea eleminar el registro?</strong>
			<button type="submit" >Eliminar</button>
			
		</form>
</body>
</html>