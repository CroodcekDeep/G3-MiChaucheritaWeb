<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="container-fluid">

		<div class=row>

			<nav class="navbar navbar-expand-lg bg-black">
				<div class="container-fluid">
					<img
						src="https://assets.materialup.com/uploads/bcf6dd06-7117-424f-9a6e-4bb795c8fb4d/preview.png"
						alt="Logo" width="40" height="40"
						class="d-inline-block align-text-top"> <a
						class="navbar-brand text-light"
						href="DashboardController?ruta=ver"> Mi Chaucherita Web </a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link activo"
								aria-current="page" href="DashboardController?ruta=ver">Dashboard</a></li>
							<li class="nav-item"><a class="nav-link text-light"
								href="RegistrarMovimientosController?ruta=nuevoIngreso">Ingreso</a></li>
							<li class="nav-item"><a class="nav-link text-light"
								href="RegistrarMovimientosController?ruta=nuevoEgreso">Egreso</a></li>
							<li class="nav-item"><a class="nav-link text-light"
								href="RegistrarMovimientosController?ruta=nuevoIngresoEgreso">Transferencia</a></li>
							<li class="nav-item"><a class="nav-link disabled text-light">Cuentas</a>
							</li>
						</ul>
					</div>

				</div>
			</nav>
		</div>


		<form class="row g-3" method="get"
			action="DashboardController?ruta=ver">
			<div class="d-flex justify-content-center">
				<div class="col-auto">
					<div class="fs-3 m-3">Seleccionar mes</div>
				</div>
				<div class="col-4">

					<select class="form-select form-select-lg m-3"
						name="mesSeleccionado">
						<c:forEach items="${meses}" var="mes">
							<option value="${mes.id}"
								${mes.id== messeleccionado ? 'selected':''}>${mes.nombre}</option>
						</c:forEach>
					</select>
				</div>

				<div class="col-auto">
					<button type="submit" class="btn btn-dark btn-lg m-3">Consultar</button>
				</div>
			</div>

		</form>



		<div class="row text-center">
			<div class="col-3">

				<div class="card bg-warning-subtle">

					<div class="card-header fs-1">Cuentas ingreso y gasto</div>
					<div class="d-flex flex-wrap justify-content-center">
						<c:forEach items="${ingresogastos}" var="ingresogasto">
							<div class="card text-bg-warning m-3" style="max-width: 18rem;">

								<div class="card-body">
									<h5 class="card-title">${ingresogasto.nombre}</h5>
									<p class="card-text">$ ${ingresogasto.total}</p>
									<button type="button" class="btn btn-light">Ver
										Movimientos</button>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>

			<div class="col-9">




				<div class="card bg-success-subtle">


					<div class="card-header fs-1">Cuentas INGRESO</div>
					<div class="d-flex justify-content-evenly">
						<c:forEach items="${ingresos}" var="ingreso">
							<div class="card text-bg-success m-3" style="max-width: 18rem;">

								<div class="card-body">
									<h5 class="card-title">${ingreso.nombre}</h5>
									<p class="card-text">$ ${ingreso.totalcalculado}</p>
									<button type="button" class="btn btn-light">Ver
										Movimientos</button>
								</div>

							</div>
						</c:forEach>
					</div>
				</div>


				<div class="card bg-danger-subtle">
					<div class="card-header fs-1">Cuentas EGRESO</div>
					<div class="d-flex justify-content-evenly">

						<c:forEach items="${egresos}" var="egreso">
							<div class="card text-bg-danger m-3" style="max-width: 18rem;">

								<div class="card-body ">
									<h5 class="card-title">${egreso.nombre}</h5>
									<p class="card-text">-$ ${egreso.totalcalculado}</p>
									<button type="button" class="btn btn-light">Ver
										Movimientos</button>
								</div>

							</div>
						</c:forEach>
					</div>


				</div>

			</div>

		</div>

	</div>
</body>
</html>