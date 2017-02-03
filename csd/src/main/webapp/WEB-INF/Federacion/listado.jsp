<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath}" scope="request" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="${path}/static/js/federacion.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body style="background:url('http://all-cspro.ru/_ph/3/649686777.png'); ">
	
	<div>
		
		<form action="${path}/buscar" method="POST">
		<label style="color:white; "for="buscar ">Buscar:</label>
		<input id="buscar"  style="width: 20%" name="buscar" class="form-control"/> 
		<input id="csrf" name="_csrf" type="hidden" value="${_csrf.token}">
		<button type="submit" class="btn btn-primary btn-buscar">BUSCAR</button>
		
		</form>
		
		</div>
	
	
	<div align="right">
		<br>	
		<input type="button"
			value="JUGADOR" name="jugador" class="btn btn-primary" onclick="self.location.href = '/csd/jugador'" />
		<input type="button"
			value="EQUIPOS" name="equipos" class="btn btn-primary" onclick="self.location.href = '/csd/equipos'" />
		</div>
		
<br>
		
		<h1 style="font-weight:bold; font-family:serif; text-align:center; color: aqua;">${titulo}</h1>
		
	<table
class="table table-hover table-condensed table-striped ">
		<thead>
			<tr style="font-weight:bold; font-size:large; font-family:serif; color: aqua; text-align: center; background-color: transparent;">
				<td style="width: 10%">#</td>
				<td style="width: 40%">Nombre</td>
				<td style="width: 20%">Pais</td>
				<td style="width: 10%">Detalle</td>
				<td style="width: 10%">Editar</td>
				<td style="width: 10%">borrar</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${federaciones}" var="federacion">
				<tr style=" font-weight:bold; font-family:serif; font-size:large; color:white; text-align: center; background-color: transparent;"data-id="${federacion.id}">
					<td>${federacion.id}</td>
					<td>${federacion.nombre}</td>
					<td>${federacion.pais}</td>
					<td><button type="submit" class="btn btn-primary btn-detalle">DETALLE</button></td>
					<td><button type="submit" class="btn btn-warning btn-editar">EDITAR</button></td>
					<td><button type="button" class="btn btn-danger btn-borrar-1">BORRAR</button></td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td style="color: white; text-align: center;" colspan="5">Federacion registrada: <span
					id="cantidades-federacion">${federaciones.size()}</span></td>
			</tr>
			<tr>
				<td style="text-align: center"colspan="5">
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#modal-federacion">Registrar Federacion</button>
						
						
						
						
					</td>
					<td style="text-align: right;" colspan="5">
							<form  action="${path}/salir" method="post">
							<input type="hidden" name="_csrf" value="${_csrf.token}">
							<button id="btn-salir" type="submit" class="btn btn-danger">SALIR</button>
							</form>
							
				</td>
			</tr>
		</tfoot>
	</table>
	<div class="modal fade" id="modal-federacion" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="form-federacion" method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">Informacion de federacion</h4>
					</div>
					<div class="modal-body">
							<label for="nombre">Nombre: </label> <input id="nombre"
							name="nombre" class="form-control"> 
							
							<label for="nombre">Pais: </label> <input id="pais"
							name="pais" class="form-control"> 
							
							
						
						<input id="id" name="id" type="hidden"> 
						
						<input id="csrf" name="_csrf" type="hidden" value="${_csrf.token}">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
						<button id="btn-salvar" type="submit" class="btn btn-primary">Guardar
							informacion</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<div class="modal fade" id="modal-federacion-1" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="form-federacion" method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">borrar de federacion.....</h4>
					</div>
					<div class="modal-body">
						
						<input id="id-borrar" name="id" type="hidden" value=""/>
						
						
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
						<button id="btn-borrar" type="button" class="btn btn-danger">Confirmar borrar</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>