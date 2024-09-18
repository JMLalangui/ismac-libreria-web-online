<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Autores</h1>
		<button	onclick="window.location.href='/ismac-libreria-web-online/autores/findOne?&opcion=1'; return false;">
	Agregar nuevo autor
	</button>
	<table>

		<thead>
			<tr>
				<th>idAutor</th>
				<th>nombre</th>
				<th>apellido</th>
				<th>pais</th>
				<th>direccion</th>
				<th>telefono</th>
				<th>correo</th>
				<th>Opciones</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="item" items="${autores}">
				<tr>
					<td>${item.idAutor}</td>
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${item.pais}</td>
					<td>${item.direccion}</td>
					<td>${item.telefono}</td>
					<td>${item.correo}</td>
					<td>
					<button	onclick="window.location.href='/ismac-libreria-web-online/autores/findOne?idAutor=${item.idAutor}&opcion=1'; return false;"> Actualizar </button>
					<button	onclick="window.location.href='/ismac-libreria-web-online/autores/findOne?idAutor=${item.idAutor}&opcion=2'; return false;"> Eliminar </button>
					</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html>