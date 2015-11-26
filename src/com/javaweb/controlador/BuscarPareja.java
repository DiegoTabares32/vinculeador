package com.javaweb.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.dao.PersonaDAO;
import com.javaweb.modelo.Persona;

/**
 * Servlet implementation class Home
 */
public class BuscarPareja extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarPareja() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		String sexo = request.getParameter("sexo");
		String edad = request.getParameter("edad");
		String fisico = request.getParameter("fisico");
		
		RequestDispatcher disp = request
				.getRequestDispatcher("resultado.jsp");

		ArrayList<Persona> posiblesParejas = new ArrayList<Persona>();
		
		posiblesParejas.addAll(PersonaDAO.getInstance().getParejas(sexo, edad, fisico));
		
		request.setAttribute("resultados", posiblesParejas);
		request.setAttribute("sexo", sexo);
		request.setAttribute("edad", edad);
		request.setAttribute("fisico", fisico);
	
		
		disp.forward(request, response);

		
//		if(sexo.equals("chongo")){
//			PrintWriter out = response.getWriter();
//			
//			out.println("Elegiste " + sexo);
//			
//		}
	}

}
