<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear Movimiento</title>
</head>
<body>
	<h1>Crear Movimiento</h1>
	
	<form method="post" action="GestionarMovimientosController?ruta=guardarMovimiento">
		CuentaOrigen
		<input type="text" name="txtCuentaOrigen"><br>
		CuentaDestino
		<input type="text" name="txtCuentaDestino"><br>
		Concepto
		<input type="text" name="txtConcepto"><br>
		Valor
		<input type="text" name="txtValor"><br>

		<input type="submit" name="Guardar">
	</form>
</body>
</html>