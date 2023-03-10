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
	<h1>Listado de Movimientos de la Cuenta</h1>
	<table>
	<thead>
		<tr>
			<th>Id</th>
			<th>Cuenta Origen</th>
			<th>Cuenta Destino</th>
			<th>Valor</th>
			<th>Acciones</th>
		</tr>
		</thead>
		
		<c:forEach items="${movimientosDeCuenta}" var="movimientoDeCuenta">
			<tr>
				<td>${movimientoDeCuenta.idMovimiento}</td>
				<td>${movimientoDeCuenta.cuentaOrigen}</td>
				<td>${movimientoDeCuenta.cuentaDestino}</td>
				<td>${movimientoDeCuenta.valor}</td>
				<td><a href="GestionarMovimientosController?ruta=verDetalleMovimiento&idMovimiento=${movimientoDeCuenta.idMovimiento}">Ver Movimiento</a> | <a href="">Modificar Movimiento</a> | <a href="">Eliminar Movimiento</a> </td>
			</tr>
		</c:forEach>
	</table>
	<p><a href="GestionarMovimientosController?ruta=realizarMovimiento">Nuevo Movimiento</a></p>
</body>
</html>