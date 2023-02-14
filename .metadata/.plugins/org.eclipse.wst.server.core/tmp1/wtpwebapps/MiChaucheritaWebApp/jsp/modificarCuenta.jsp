<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="GestionarCuentaController?ruta=guardarActualizacion&id=${cuenta.idCuenta}">
	<h1>Actualizar Nombre de Cuenta</h1>
	Nombre:<input type="text" name="txtNombre" value="${cuenta.nombre}">
	<input type="submit" value="Guardar">
</form>
</body>
</html>