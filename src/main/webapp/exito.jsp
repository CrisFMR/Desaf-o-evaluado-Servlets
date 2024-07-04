<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body class="bg-dark text-light">
	<header>
		<div class="container bg-transparent py-2 my-2">
			<h1 class="title text text-center">RESULTADO</h1>
		</div>
	</header>
	<main>
		<section class="container border border-2 rounded-3 bg-gradient">
			<div class="text-center py-4 my-4">
			<!-- Solución enviada por servlet en base a solicitado por usuario -->
				<p class="h4 border border-3 mx-5 rounded-3 px-5 bg-success">${solucion}</p>
			</div>
			<div class="row align-items-center py-4 my-4">
				<div class="col"></div>
				<div class="col w-25 p-3">
				<!-- Botón de retorno a calculadora -->
					<a href="index.jsp" class="btn btn-warning w-100" role="button"
						data-bs-toggle="button">Volver a Calculadora</a>
				</div>
				<div class="col"></div>
			</div>
		</section>
	</main>
</body>
</html>