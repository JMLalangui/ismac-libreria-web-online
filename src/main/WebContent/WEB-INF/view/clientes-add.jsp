<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<section class="px-5 py-5 bg-light">
	<div class="container mt-4 table-responsive">
		<h1>Clientes</h1>
		
		<table class="table table-striped table-sm" >
			
			<form action="add" method="post">
	
				<input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}"/>
				
				<div class="mb-3">
				Cedula
				<input class="form-control"  type="text" id="cedula" name="cedula" value="${cliente.cedula}"/>
				</div>
				<br>
				
				<div class="mb-3">
				Nombre
				<input class="form-control"  type="text" id="nombre" name="nombre" value="${cliente.nombre}"/>
				</div>
				<br>
				
				<div class="mb-3">
				Apellido
				<input class="form-control"  type="text" id="apellido" name="apellido" value="${cliente.apellido}"/>
				</div>
				<br>
				
				<div class="mb-3">
				Direccion
				<input class="form-control"  type="text" id="direccion" name="direccion" value="${cliente.direccion}"/>
				</div>
				<br>
				
				<div class="mb-3">
				Telefono
				<input class="form-control"  type="text" id="telfono" name="telfono" value="${cliente.telfono}"/>
				</div>
				<br>
				
				<div class="mb-3">
				Correo
				<input class="form-control"  type="email" id="correo" name="correo" value="${cliente.correo}"/>
				</div>
			
				<button class="btn btn-info mb-1 me-2" type="submit" >Guardar</button>
				<button class="btn btn-danger mb-1" type="button" onclick="window.location.href='/ismac-libreria-web-online/clientes/findAll'; return false;">Cancelar</button>
				
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