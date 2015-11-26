<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="style/home_style.css" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>

<div class="container">		
	
	<form action="buscarPareja" method="get">
	<!-- Sexo -->
		<div class="form-group">
			<label>Elija Sexo</label>
			<label  onClick="mostrarEdades()"  class="radio-inline sxo"><input type="radio" value="Chongo" name="sexo">Chongo</label>
			<label  onClick="mostrarEdades()"  class="radio-inline sexo"><input type="radio" value="Chonga" name="sexo">Chonga</label>
			<label  onClick="mostrarEdades()"  class="radio-inline sexo"><input type="radio" value="todo" name="sexo">Lo que venga!</label>
		</div>
		
		<!-- Edad -->
		<div class="form-group" id="edades_view">
			<label>Seleccione el rango de edades</label>
			<select onchange="mostrarFisico()" name="edad" id="tipo_helado">
				<option value="">--elija--</option>
				<option value="joven" name="edad">21 a 26</option>
				<option value="maduro" name="edad">27 a 40</option>
				<option value="jovato" name="edad">41 a Sacando pasaje con San Pedro</option>
			</select>
		</div>
		
		<!-- Cuerpo -->
		<div class="form-group" id="fisico_view">
			<label>Seleccione el tipo de físico</label>
			<select onChange="mostrarBotonBuscar()" name="fisico" id="tipo_gustos">
				<option value="">--elija--</option>
				<option value="Flaco" name="fisico">Flaco/a</option>
				<option value="Normal" name="fisico">Normal</option>
				<option value="Atletico" name="fisico">Atlético/a</option>
				<option value="Musculoso" name="fisico">Musculoso/a</option>
				<option value="Kilitos de mas" name="fisico">kilitos de más</option>
			</select>
		</div>
		
		<div class="form-group" id="buscarButtonDiv">
			<button class="form-control">Buscar Pareja!</button>
		</div>
		
	</form>
	
	<script type="text/javascript" src="script/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="script/funciones.js"></script>
	</div>
</body>
</html>