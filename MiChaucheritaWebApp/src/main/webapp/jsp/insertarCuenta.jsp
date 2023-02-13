<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>Creación de Cuenta</h1>
<form method="POST" action="GestionarCuentaController?ruta=guardar">
	Nombre:<input type="text" id="campoNombre" name="txtNombre">
	<br>
    Monto:<input type="text" id="campoMonto" name="txtMonto"><span> *Valido solo para cuentas de tipo Ingreso</span>
	<br>
    Tipo de Cuenta:
	<br>
	Ingreso:<input type="radio" name = "tipo"  value="Ingreso">
	<br>
	Gasto:<input type="radio" name = "tipo"  value="Gasto">
	<br>
	Ingreso y gasto:<input type="radio" name = "tipo" value="IngresoGasto">
	<br>
    <input type="submit" id="btnGuardar"value="Guardar">
</form>
</body>
</html>