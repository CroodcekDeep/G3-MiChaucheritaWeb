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
	<h1>Detalle de movimiento</h1>

			<h3>Id</h3>
			<p>${movimientoDeCuenta.idMovimiento}</p>
			<h3>Cuenta Origen</h3>
			<p>${movimientoDeCuenta.cuentaOrigen}</p>
			<h3>Cuenta Destino</h3>
			<p>${movimientoDeCuenta.cuentaDestino}</p>
			<h3>Concepto</h3>
			<p>${movimientoDeCuenta.concepto}</p>
			<h3>Valor</h3>
			<p>${movimientoDeCuenta.valor}</p>
			<h3>Fecha</h3>
			<p>${movimientoDeCuenta.fecha}</p>
		
		<a href="">Modificar Movimiento</a> | <a href="">Eliminar Movimiento</a> 

</body>
</html>