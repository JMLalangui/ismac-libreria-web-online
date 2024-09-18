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

	<h1>Categorias</h1>


		<button	onclick="window.location.href='/ismac-libreria-web-online/categorias/findOne?&opcion=1'; return false;">
		Agregar nueva categoria
		</button>
	<table>

		<thead>
			<tr>
				<th>idCategoria</th>
				<th>categoria</th>
				<th>descripcion</th>
				<th>Opciones</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="item" items="${categorias}">
				<tr>
					<td>${item.idCategoria}</td>
					<td>${item.categoria}</td>
					<td>${item.descripcion}</td>
					<td>
							<button	onclick="window.location.href='/ismac-libreria-web-online/categorias/findOne?idCategoria=${item.idCategoria}&opcion=1'; return false;">
							Actualizar
							</button>
							<button	onclick="window.location.href='/ismac-libreria-web-online/categorias/findOne?idCategoria=${item.idCategoria}&opcion=2'; return false;">
							Eliminar
							</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>

</body>
</html>