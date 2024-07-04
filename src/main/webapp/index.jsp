<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<!-- Se incorpora el Head -->
<%@include file="assets/html/head.jsp"%>
<body class="bg-dark text-light">
	<header>
		<div>
			<h1 class="title text-center my-3 py-3">Calculadora</h1>
		</div>
	</header>
	<main>
		<section class="container container border border-2 rounded-3 bg-gradient py-4">
			<form class="form needs-validation" method="POST" action="calculo">
				<!-- Ingreso de valor 1 -->
				<div class="mb-3 px-5 mx-5">
					<label class="textlabe d-flex justify-content-center" for="numero1"> INGRESE PRIMER VALOR</label> 
					<input type="input" class="form-control bg-transparent text-center" id="num1" name="num1" autocomplete="off" required>
				</div>
				<!-- Ingreso de valor 2 -->
				<div class="mb-3 px-5 mx-5">
					<label class="textlabe d-flex justify-content-center" for="numero2">INGRESE SEGUNDO VALOR</label>
					<input type="input" class="form-control bg-transparent text-center" id="num2" name="num2" autocomplete="off" required>
				</div>
				<br>
				<!-- Opción desplegable -->
				<div class="mb-3 px-5 mx-5">
					<select class="form-select bg-dark text-light" id="funcion"
						name="funcion" required>
						<option value="" disabled selected>Seleccione una
							operación</option>
						<option value="suma">Suma</option>
						<option value="resta">Resta</option>
						<option value="multiplicar">Multiplicación</option>
						<option value="dividir">División</option>
						<option value="ordenar">Función Ordenar</option>
						<option value="parImpar">Función Par/Impar</option>
					</select>		
				</div>
				<!-- Botón cálculo -->
				<div class="row align-items-center py-4 my-4">
					<div class="col"></div>
					<div class="col w-25 p-3">
						<button type="submit" class="btn btn-warning btn-color w-100">Calcular</button>
					</div>
					<div class="col"></div>
				</div>
			</form>
		</section>
	</main>
	<!-- Se incorpora el footer -->
	<%@include file="assets/html/footer.jsp"%>
</body>
</html>