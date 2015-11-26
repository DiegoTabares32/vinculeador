<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error de login</title>
</head>
<body>
	<h1>ACCESO DENEGANDO!</h1>
	
	 <c:url var="url" value="/index.jsp"/>
    <h2>Eeee vieja!!! No tenés permisos para entrar a la página!</h2>

    <p>Volvé pa' tras y fijate de poner bien el usuario y contraseña -> <a href="${url}">Login</a></p>
</body>
</html>