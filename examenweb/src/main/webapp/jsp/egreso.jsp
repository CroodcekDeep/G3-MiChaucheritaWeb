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
<title>Egresos</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg custom-nav">
		<div class="container-fluid">
			<h1 class="navbar-brand mb-0 text-white">Contabilidad Personal</h1>
			<button class="navbar-toggler bg-white" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link custom-nav-link"
						href="DashboardController?ruta=ver">Dashboard</a></li>
					<li class="nav-item"><a class="nav-link custom-nav-link"
						href="RegistrarMovimientosController?ruta=nuevoIngreso">Ingreso</a>
					</li>
					<li class="nav-item"><a class="nav-link custom-nav-link"
						href="RegistrarMovimientosController?ruta=nuevoEgreso">Egreso</a>
					</li>
					<li class="nav-item"><a class="nav-link custom-nav-link"
						href="RegistrarMovimientosController?ruta=nuevoIngresoEgreso">Transferencia</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h2 class="text-center mb-4">Registro de Egresos</h2>
				 <form method="post" action="RegistrarMovimientosController?ruta=guardarIngreso">
					<div class="mb-3">
						<label for="categoria-ingreso" class="form-label">Categoría
							Ingreso</label> <select class="form-select" name="idCuentaOrigen"
							required>
							<option value="">Seleccione una cuenta...</option>
							<c:forEach items="${cuentasIngresoGasto}" var="cuentasIngresoGasto">
								<option value="${cuentasIngresoGasto.id}">
									${cuentasIngresoGasto.nombre}</option>
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
						<label for="cuenta-acreditada" class="form-label">Cuenta
							Acreditada</label> <select class="form-select" name="idCuentaDestino"
							required>
							<option value="">Seleccione una cuenta...</option>
							<c:forEach items="${cuentasEgreso}"
								var="cuentasEgreso">
								<option value="${cuentasEgreso.id}">
									${cuentasEgreso.nombre}</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">Guardar</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>