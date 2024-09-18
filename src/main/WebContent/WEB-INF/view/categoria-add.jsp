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
		
		<form action="add" method="POST">

			<input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}"/>
			Categoria
			<input type="text" id="categoria" name="categoria" value="${categoria.categoria}"/>
			<br>
			Descripcion
			<input type="text" id="descripcion" name="descripcion" value="${categoria.descripcion}"/>
			<button type="submit" >Guardar</button>
			
		</form>
</body>
</html>