<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String mensaje = request.getParameter("error");
%>
<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body class="bg-dark text-light">
	<header>
		<div class="container bg-transparent py-4 my-4">
			<h1 class="title text text-center">SE HA PRODUCIDO UN ERROR</h1>
			</div>
	</header>
	<main>
		<section class="container border border-4 rounded-3 bg-gradient">
			<div class="text-center py-4 my-4">
				<img width="100" height="100" src="https://img.icons8.com/sf-regular/96/error.png" alt="error"/>
				<p class="h5 border border-3 mx-5 rounded-3 px-5 bg-danger">${error}</p>
			</div>
			<div class="row align-items-center py-4 my-4">
				<div class="col"></div>
				<div class="col w-25 p-3">
					<a href="index.jsp" class="btn btn-warning w-100" role="button"
						data-bs-toggle="button">Volver a Calculadora</a>
				</div>
				<div class="col"></div>
			</div>
		</section>
	</main>
</body>
</html>