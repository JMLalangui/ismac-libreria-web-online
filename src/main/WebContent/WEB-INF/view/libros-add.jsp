<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
		<h1>Libros</h1>
			<table class="table table-striped table-sm" >
				<form action="add" method="post">
				
					<div class="mb-3">
					<input class="form-control" type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Titulo
					<input class="form-control" type="text" id="titutlo" name="titutlo" value="${libro.titutlo}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Editorial
					<input class="form-control"  type="text" id="editorial" name="editorial" value="${libro.editorial}"/>
					</div>
					<br>
					
					<div class="mb-3">
					numPaginas
					<input class="form-control"  type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Edicion
					<input class="form-control"  type="text" id="edicion" name="edicion" value="${libro.edicion}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Idioma
					<input class="form-control"  type="text" id="idioma" name="idioma" value="${libro.idioma}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Fecha de publicacion
					<input class="form-control"  type="date" id="fechaPublicacion" name="fechaPublicacion" value="${fn:substring(libro.fechaPublicacion,0,10)}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Descripcion
					<input class="form-control"  type="text" id="descripcion" name="descripcion" value="${libro.descripcion}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Tipo de pasta
					<input class="form-control"  type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}"/>
					</div>
					<br>
					
					<div class="mb-3">
					ISBN
					<input class="form-control"  type="text" id="isbn" name="isbn" value="${libro.isbn}"/>
					</div>
					<br>
					
					<div class="mb-3">
					numEjemplares
					<input class="form-control"  type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Portada
					<input class="form-control"  type="text" id="portada" name="portada" value="${libro.portada}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Presentacion
					<input class="form-control"  type="text" id="presentacion" name="presentacion" value="${libro.presentacion}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Precio
					<input class="form-control"  type="number" id="precio" name="precio" value="${libro.precio}"/>
					</div>
					<br>
					
					<div class="mb-3">
					Categoria
					<select id="idCategoria" name="idCategoria"  class="form-select">
					<c:forEach var="item" items="${categorias}">
					<option value="${item.idCategoria}" ${item.idCategoria == libro.categoria.idCategoria? 'selected' : '' }>${item.categoria}</option>
					</c:forEach>
					</select>
					</div>
					<br>
					
					<div class="mb-3">
					Autor
					<select id="idAutor" name="idAutor"  class="form-select">
					<c:forEach var="item" items="${autores}">
					<option value="${item.idAutor}">${item.nombre} ${item.apellido}</option>
					</c:forEach>
					</select>
					</div>
					<br>
				
					
					<button class="btn btn-info mb-1 me-2" type="submit" >Guardar</button>
					<button class="btn btn-danger mb-1" type="button" onclick="window.location.href='/ismac-libreria-web-online/libros/findAll'; return false;">Cancelar</button>
				
				
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