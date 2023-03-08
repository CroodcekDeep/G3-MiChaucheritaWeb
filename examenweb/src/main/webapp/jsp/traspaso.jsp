<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<!-- Style -->
<link rel="stylesheet" href="css/style.css">
<title>Transferencias</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-black">
				<div class="container-fluid">
					<img
						src="https://assets.materialup.com/uploads/bcf6dd06-7117-424f-9a6e-4bb795c8fb4d/preview.png"
						alt="Logo" width="40" height="40"
						class="d-inline-block align-text-top"> <a
						class="navbar-brand text-light"
						href="DashboardController?ruta=ver"> Mi Chaucherita Web </a>
					<button class="navbar-toggler bg-warning" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link text-light"
								aria-current="page" href="DashboardController?ruta=ver">Dashboard</a></li>
							<li class="nav-item"><a class="nav-link  text-light"
								href="RegistrarMovimientosController?ruta=nuevoIngreso">Ingreso</a></li>
							<li class="nav-item"><a class="nav-link text-light"
								href="RegistrarMovimientosController?ruta=nuevoEgreso">Egreso</a></li>
							<li class="nav-item"><a class="nav-link activo"
								href="RegistrarMovimientosController?ruta=nuevoIngresoEgreso">Transferencia</a></li>
							<li class="nav-item"><a class="nav-link disabled text-light">Cuentas</a>
							</li>
						</ul>
					</div>

				</div>
			</nav>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h2 class="text-center m-4">Registro de Transferencia</h2>
				 <form method="post" action="RegistrarMovimientosController?ruta=guardarIngresoEgreso">
					<div class="mb-3">
						<label for="categoria-ingreso" class="form-label">Cuenta de Ingreso Gasto</label> 
							<select class="form-select" name="idCuentaOrigen"
							required>
							<option value="">Seleccione una cuenta...</option>
							<c:forEach items="${cuentasIngresoGasto}" var="cuentaIngresoGasto">
								<option value="${cuentaIngresoGasto.id}">
									${cuentaIngresoGasto.nombre}</option>
							</c:forEach>
						</select>
					</div>
					<div class="mb-3">
						<label for="concepto" class="form-label">Concepto</label> <input
							type="text" class="form-control" name="concepto" required>
					</div>
					<div class="mb-3">
						<label for="fecha" class="form-label">Fecha</label> <input
							type="date" class="form-control" name="fecha" required>
					</div>
					<div class="mb-3">
						<label for="valor" class="form-label">Valor</label>
						<div class="input-group">
							<span class="input-group-text">$</span> <input type="number"
								class="form-control" name="valor" required>
						</div>
					</div>
					<div class="mb-3">
						<label for="cuenta-acreditada" class="form-label">Cuenta de Ingreso Gasto</label> <select class="form-select" name="idCuentaDestino"
							required>
							<option value="">Seleccione una cuenta...</option>
							<c:forEach items="${cuentasIngresoGasto}"
								var="cuentaIngresoGasto">
								<option value="${cuentaIngresoGasto.id}">
									${cuentaIngresoGasto.nombre}</option>
							</c:forEach>
						</select>
					</div>
					<div class="row">
					<button type="submit" class="btn btn-dark btn-lg">Guardar</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>