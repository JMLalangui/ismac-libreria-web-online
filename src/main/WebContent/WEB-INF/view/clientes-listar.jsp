<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/estilos.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
<title>Insert title here</title>
</head>
<body>

<nav></nav>

<section class="px-5 py-5 bg-light">

<div class="container mt-4 table-responsive">
	<h1>Clientes</h1>
	
	<div class="container" style="text-align: center">
	<button	class="btn btn-dark"
	onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?&opcion=1'; return false;">
		<i class="fa-solid fa-book"></i></button>
	</button>
	</div>
	
		<table class="table table-striped table-sm" 
					name="table"
					data-toggle="table" 
					data-pagination="true" 
					data-search="true"
					data-toolbar="toolbar">
				<caption>Lista de libros</caption>
				<thead class="table-dark">
					<tr>
						<th data-sortable="true" data-field="id">idCliente</th>
						<th>Cedula</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Direccion</th>
						<th>Telefono</th>
						<th>Correo</th>
						<th>Opciones</th>
					</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${clientes}">
					<tr>
						<td>${item.idCliente}</td>
						<td>${item.cedula}</td>
						<td>${item.nombre}</td>
						<td>${item.apellido}</td>
						<td>${item.direccion}</td>
						<td>${item.telfono}</td>
						<td>${item.correo}</td>
						<td>
							<div class ="d-flex justify-content-centeralign-items-center">
								<div class="d-flex flex-column">
									<button class="btn btn-info mb-1"	
									onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?idCliente=${item.idCliente}&opcion=1'; return false;">
										<i class="fa-solid fa-pen-to-square"></i></button>
									<button	class="btn btn-danger"
									onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?idCliente=${item.idCliente}&opcion=3'; return false;">
										<i class="fa-solid fa-trash"></i></button>
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
	<script src="https://kit.fontawesome.com/38d5ec97ef.js" 
	crossorigin="anonymous"></script>
	<script type="text/javascript">
		var $table =$('#table')
		$(function () {
			$table = bootstrapTable.({sortReset:true})	})
	</script>
</body>
</html>