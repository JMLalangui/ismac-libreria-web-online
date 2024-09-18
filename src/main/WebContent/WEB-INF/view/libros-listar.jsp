<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Libros</h1>
	
	<button	onclick="window.location.href='/ismac-libreria-web-online/libros/findOne?&opcion=1'; return false;">
	Agregar
	</button>

	<table>

		<thead>
			<tr>
				<th>idLibro</th>
				<th>titutlo</th>
				<th>editorial</th>
				<th>numPaginas</th>
				<th>edicion</th>
				<th>idioma</th>
				<th>fechaPublicacion</th>
				<th>descripcion</th>
				<th>tipoPasta</th>
				<th>isbn</th>
				<th>numEjemplares</th>
				<th>portada</th>
				<th>presentacion</th>
				<th>precio</th>
				<th>id_autor</th>
				<th>id_categoria</th>
				<th>Opciones</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="item" items="${libros}">
				<tr>
					<td>${item.idLibro}</td>
					<td>${item.titutlo}</td>
					<td>${item.editorial}</td>
					<td>${item.numPaginas}</td>
					<td>${item.edicion}</td>
					<td>${item.idioma}</td>
					<td>${fn:substring(item.fechaPublicacion,0,10)}</td>
					<td>${item.descripcion}</td>
					<td>${item.tipoPasta}</td>
					<td>${item.isbn}</td>
					<td>${item.numEjemplares}</td>
					<td>
						<img alt="portada del libro" width="150" height="150" src="${pageContext.request.contextPath}/resources/img/${item.portada}">
					</td>
					<td>${item.presentacion}</td>
					<td>${item.precio}</td>
					<td>${item.autor.nombre} ${item.autor.apellido}</td>
					<td>${item.categoria.categoria}</td>
					<td>
						<button	onclick="window.location.href='/ismac-libreria-web-online/libros/findOne?idLibro=${item.idLibro}&opcion=1'; return false;">
						Actualizar</button>
						<button	onclick="window.location.href='/ismac-libreria-web-online/libros/findOne?idLibro=${item.idLibro}&opcion=3'; return false;">
						Eliminar</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>


	</table>

</body>
</html>