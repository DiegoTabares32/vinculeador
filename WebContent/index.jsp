<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" 
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" 
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" 
	integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" 
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" 
	integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" 
	crossorigin="anonymous"></script>

<link href="style/style.css" rel="stylesheet">

<title>Vinculeador on-line</title>
</head>
<body>

<div class="login">

<div class="login-screen">
			<div class="app-title">
				<h1 id="titulo">Vinculeador On-line</h1>
			</div>
		<form action="login" method="post">
			<div class="login-form">
				<div class="control-group">
				<input type="text"  value="" placeholder="Usuario" id="login-name" name="user" required>
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input type="password" class="login-field" value="" placeholder="Contraseña" name="pass" id="login-pass" required>
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div>

				<!-- <div class="form-group">
					<button onclick="validoGustos()" class="form-control">Comprar Helado!</button>
				</div>
				-->
				<input type="submit" class="btn" value="Entrar"></a>				
			</div>
						
		</form>
	</div>
<!-- 		<div class="login-screen">
			<div class="app-title">
				<h1 id="titulo">Vinculeador On-line</h1>
			</div>

			<div class="login-form">
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="Usuario" id="login-name">
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input type="password" class="login-field" value="" placeholder="Contraseña" id="login-pass">
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div>

				<div class="form-group">
					<button onclick="validoGustos()" class="form-control">Comprar Helado!</button>
				</div>
				<button class="btn btn-primary btn-large btn-block" href="#">Login</a>				
			</div>
		</div>
		
-->
	</div>
	
</body>
</html>