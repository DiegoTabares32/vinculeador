<%@page import="com.javaweb.modelo.Persona"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		//Estamos escribiendo codigo java
		 String sexo = (String) request.getParameter("sexo");
		String edad = (String) request.getParameter("edad");
		String fisico = (String) request.getParameter("fisico"); 
/* String */ 
		
		 out.println("<h1>Sexo = " + sexo + " - Edad = " + edad + " - Fisico = " + fisico +"</h1>"); 

		List<Persona> personas = (List<Persona>)request.getAttribute("resultados");
		
		out.println("<h2>Se encontraron "+ personas.size() + " resultados!</h2>");
		
		if(personas.size() == 0){
			out.println("<h2>Fuiste vieja, te quedaste forever alone :(</h2>");
		}
		
		 out.println("<form action='#' method='get'>");
		out.println("<table style='border: 2px'>"); 
		for (Persona persona : personas) {
			/* String valorDisponible = (item.isDisponible() ? "SI" : "No"); */

			out.print("<tr>");
			out.print("<td>Nombre: </td>");
			out.print("<td>" + persona.getNombre() + "</td>");
			out.print("<td>Edad: </td>");
			out.print("<td>" + persona.getEdad() + "</td>");
			out.print("<td>Fisico: </td>");
			out.print("<td>" + persona.getContextura() + "</td>");
			out.print("<td>Sexo: </td>");
			out.print("<td>" + persona.getSexo() + "</td>");
			out.print("<td>Vinculear</td>");
			out.print("<td><input type='checkbox' name='"
					+ persona.getNombre() + "'/> </td>");
			out.print("</tr>");

		}
		
		/* Cookie[] cookies =request.getCookies();
		boolean habilito=false;
		for(Cookie itemCookie: cookies){
			if(itemCookie.getName().equals("logeo")){
				habilito=true;
			}
		}
		if(habilito){
			out.print("<tr><td> <input type='submit' value='enviar'/></td></tr>");
		} */
		
		out.print("</table");
 		out.print("</form>");
	%>
</body>
</html>