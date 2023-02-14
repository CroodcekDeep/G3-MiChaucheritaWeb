<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Detalle de cuenta</h1>
ID: <p style="display:inline;">${cuenta.idCuenta}</p>
<br>
Nombre: <p style="display:inline;">${cuenta.nombre}  </p>
<br>
Monto: <p style="display:inline;">${cuenta.monto}</p>
<br>
Tipo: <p style="display:inline;">${cuenta.tipo}</p>
<br>
<a href="GestionarCuentaController?ruta=modificar&id=${cuenta.idCuenta}">Modificar</a>
</body>
</html>