<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/estilos.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
<title>Libros</title>

</head>
<body>

	<nav></nav>


	<section class="px-5 py-5">

		<h1>Libros</h1>

		<div class="container" style="text-align: center">
			<button class="btn btn-dark"
				onclick="window.location.href='/ismac-libreria-web-online/libros/findOne?&opcion=1'; return false;">
				<i class="fa-solid fa-book"></i></button>
		</div>


		<div class="table-responsive">
			<table class="table table-striped table-sm" 
				name="table"
				data-toggle="table" 
				data-pagination="true" 
				data-search="true"
				data-toolbar="toolbar">
				<caption>Lista de libros</caption>
				<thead class="table-dark">
					<tr>
						<th data-sortable="true" data-field="id">idLibro</th>
						<th>Titutlo</th>
						<th>Editorial</th>
						<th>Paginas</th>
						<th>Edicion</th>
						<th>Idioma</th>
						<th>Fecha de publicacion</th>
						<th>Descripcion</th>
						<th>Pasta</th>
						<th>ISBN</th>
						<th>Ejemplares</th>
						<th>Portada</th>
						<th>Presentacion</th>
						<th>Precio</th>
						<th>Autor</th>
						<th>Categoria</th>
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
							<td><img alt="portada del libro" width="150" height="150"
								src="${pageContext.request.contextPath}/resources/img/${item.portada}">
							</td>
							<td>${item.presentacion}</td>
							<td>${item.precio}</td>
							<td>${item.autor.nombre}${item.autor.apellido}</td>
							<td>${item.categoria.categoria}</td>
							<td>
							<div class ="d-flex justify-content-centeralign-items-center">
								<div class="d-flex flex-column">
									<button class="btn btn-info mb-1"
										onclick="window.location.href='/ismac-libreria-web-online/libros/findOne?idLibro=${item.idLibro}&opcion=1'; return false;"><i class="fa-solid fa-pen-to-square"></i></button>
									<button class="btn btn-danger"
										onclick="window.location.href='/ismac-libreria-web-online/libros/findOne?idLibro=${item.idLibro}&opcion=3'; return false;"><i class="fa-solid fa-trash"></i></button>
								</div>
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</section>


	<footer></footer>



	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js">></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js">></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js">></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js">></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js">></script>
	<script src="https://kit.fontawesome.com/38d5ec97ef.js" crossorigin="anonymous"></script>
	<script type="text/javascript">
		var $table =$('#table')
		$(function () {
			$table = bootstrapTable.({sortReset:true})	})
	</script>
</body>
</html>