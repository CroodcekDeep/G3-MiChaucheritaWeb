<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Dashboard</title>
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

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<h2 class="text-center">
					Cuentas <i class="bi bi-person-lines-fill"></i>
				</h2>
				<c:forEach items="${ingresogastos}" var="ingresogasto">
					<div class="card m-2">
						<div
							class="card-body bg-body-secondary border rounded text-center">
							<h4>${ingresogasto.nombre}</h4>
							<p>$ ${ingresogasto.total}</p>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-12">
						<form method="get" action="DashboardController?ruta=ver">
							<div class="input-group mb-3">
								<label class="input-group-text" for="mes">Filtrar por
									Mes</label> <select class="form-select" name="mesSeleccionado">
									<c:forEach items="${meses}" var="mes">
										<option value="${mes.id}"
											${mes.id== messeleccionado ? 'selected':''}>${mes.nombre}</option>
									</c:forEach>
								</select>
								<button class="btn btn-primary" type="submit">
									<i class="bi bi-search"></i> Consultar
								</button>
							</div>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<h3>Cuentas de Ingresos</h3>
						<div class="card d-grid gap-3">
							<c:forEach items="${ingresos}" var="ingreso">
								<div
									class="card-body bg-body-secondary border rounded text-center">
									<h4>${ingreso.nombre}</h4>
									<p class="text-success">$ ${ingreso.totalcalculado}</p>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="col-md-6">
						<h3>Cuentas de Egresos</h3>
						<div class="card d-grid gap-3">
							<c:forEach items="${egresos}" var="egreso">
								<div
									class="card-body bg-body-secondary border rounded text-center">
									<h4>${egreso.nombre}</h4>
									<p class="text-danger">-$ ${egreso.totalcalculado}</p>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>