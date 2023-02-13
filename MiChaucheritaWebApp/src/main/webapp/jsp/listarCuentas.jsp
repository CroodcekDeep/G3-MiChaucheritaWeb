<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mi Chaucherita Web</title>
</head>
<body>
	<!-- contruida con jstl -->
	<h1>Listado de Cuentas</h1>
	<p><a href="GestionarCuentaController?ruta=nuevo">Nueva Cuenta</a></p>
	<table>
	<thead>
		<tr>
			<th>Id</th>
			<th>Cuenta</th>
			<th>Monto</th>
			<th>Acciones</th>
		</tr>
		</thead>
		
		<c:forEach items="${cuentas}" var="cuenta">
			<tr>
				<td>${cuenta.idCuenta}</td>
				<td>${cuenta.nombre}</td>
				<td>${cuenta.monto}</td>
				<td><a href="GestionarCuentaController?ruta=ver&id=${cuenta.idCuenta}">Ver</a> 
				| <a href="GestionarCuentaController?ruta=eliminar&id=${cuenta.idCuenta}">Eliminar</a> 
				| <a href="GestionarMovimientosController?ruta=listarMovimientosDeCuenta&idCuenta=${cuenta.idCuenta}">Ver Movimientos</a> </td>
			</tr>
		</c:forEach>
	</table>
	<p><a href="GestionarMovimientosController?ruta=verMovimientosGenerales">Ver Todos los Movimientos</a></p>
	<p><a href="">Nuevo Movimiento</a></p>
</body>
</html>