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
<script src="${path}/static/js/jugador.js"></script>

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
<title>Insert title here</title>
</head>
<body style="background:url('http://all-cspro.ru/_ph/3/649686777.png'); ">

<jsp:include page="/WEB-INF/buscar/buscarform.jsp"></jsp:include>

<table  class="table table-hover table-condensed table-striped ">
		
<tbody  >

		</div>

		<div align="right">
		<br>	
		<input type="button" value="FEDERACION" name="federacion" class="btn btn-primary" onclick="self.location.href = '/csd/federacion'" />
		<input type="button" value="EQUIPOS" name="equipos" class="btn btn-primary" onclick="self.location.href = '/csd/equipos'" />
		<input type="button" value="JUGADOR" name="jugador" class="btn btn-primary" onclick="self.location.href = '/csd/jugador'" />
		</div>
				
				<h1 style="font-weight:bold; font-family:serif; text-align:center; color: aqua;">${titulo}</h1>
		
		
		
		<table  class="table table-hover table-condensed table-striped ">
		<h3 style="color:white; text-align: center;">JUGADORES</h3>
					
		<thead>
			<tr style="font-weight:bold; font-size:large; font-family:serif; color: aqua; text-align: center; background-color: transparent;" >
				<td style="width: 10%">Tipo</td>
				<td style="width: 10%">#</td>
				<td style="width: 30%">Nombre</td>
				<td style="width: 10%">Edad</td>
				<td style="width: 10%">Goles</td>
				<td style="width: 20%">Equipo</td>
				<td style="width: 20%">Detalle</td>
				<td style="width: 10%">Editar</td>
				<td style="width: 10%">borrar</td>
			</tr>
		</thead>
		<tbody  >
			<c:forEach items="${jugadores}" var="jugador">
				<tr style=" font-weight:bold; font-family:serif; font-size:large; color:white; text-align: center; background-color: transparent;" data-id="${jugador.id}">
					<td>${titulo1}</td>
					
					<td>${jugador.id}</td>
					<td>${jugador.nombre}</td>
					<td>${jugador.edad}</td>
					<td>${jugador.goles}</td>
					<td>
					${jugador.equipo.nombre}
					</td>
					<td><button type="submit" class="btn btn-primary btn-detalle">DETALLE</button></td>
					<td><button type="submit" class="btn btn-warning btn-editar">EDITAR</button></td>
					<td><button type="button" class="btn btn-danger btn-borrar-1">BORRAR</button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		
			<table
		class="table table-hover table-condensed table-striped ">
		
		<h3 style="color:white; text-align: center;">EQUIPOS</h3>
		<thead>
			<tr style="font-weight:bold; font-size:large; font-family:serif; color: aqua; text-align: center; background-color: transparent;">
				<td style="width: 10%">Tipo</td>
				
				<td style="width: 10%">#</td>
				<td style="width: 30%">Nombre</td>
				<td style="width: 20%">Estadio</td>
				<td style="width: 10%">Federacion</td>
				<td style="width: 10%">Presupuesto</td>
				<td style="width: 10%">Detalle</td>
				<td style="width: 10%">Editar</td>
				<td style="width: 10%">borrar</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${equipos}" var="equipo">
				<tr style=" font-weight:bold; font-family:serif; font-size:large; color:white; text-align: center; background-color: transparent;"  data-id="${equipo.id}">
					<td>${titulo2}</td>
					<td>${equipo.id}</td>
					<td>${equipo.nombre}</td>
					<td>${equipo.estadio}</td>
					<td>${equipo.federacion.nombre}
					
					</td>
					<td>${equipo.presupuesto}</td>
					<td><button type="submit" class="btn btn-primary btn-detalle">DETALLE</button></td>
					<td><button type="submit" class="btn btn-warning btn-editar">EDITAR</button></td>
					<td><button type="button" class="btn btn-danger btn-borrar-1">BORRAR</button></td>
				</tr>
			</c:forEach>
			</tbody>
			</table>
			
			
				<table class="table table-hover table-condensed table-striped ">
				<h3 style="color:white; text-align: center;">FEDERACIONES</h3>
		<thead>
			<tr style="font-weight:bold; font-size:large; font-family:serif; color: aqua; text-align: center; background-color: transparent;">
				<td style="width: 10%">Tipo</td>
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
					<td>${titulo3}</td>
					<td>${federacion.id}</td>
					<td>${federacion.nombre}</td>
					<td>${federacion.pais}</td>
					<td><button type="submit" class="btn btn-primary btn-detalle">DETALLE</button></td>
					<td><button type="submit" class="btn btn-warning btn-editar">EDITAR</button></td>
					<td><button type="button" class="btn btn-danger btn-borrar-1">BORRAR</button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
			
			
		
	
			
</body>
</html>