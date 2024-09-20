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
		<h1>Libros</h1>

		<div class="container table-responsive container mt-4">
			<table class ="table table-stripedtable-sm">
			<form action="del" method="get">

				<input type="hidden" id="idLibro" name="idLibro"
					value="${libro.idLibro}" /> 
					<strong class="text-danger">¿Desea eliminar el registro? </strong>

				<button class="btn btn-info mb-1 me-2" type="submit">Eliminar</button>
				<button class="btn btn-danger mb-1" type="button"
					onclick="window.location.href='/ismac-libreria-web-online/libros/findAll'; return false;">Cancelar</button>

			</form>
			</table>
		</div>
	</section>
	
	
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
</body>
</html>