package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CollaborateursController extends HttpServlet {

	/** serialVersionUID : long */
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String avecPhotoParam = req.getParameter("avecPhoto");

		String departementParam = req.getParameter("departement");
		res.setContentType("text/html");
		
		res.getWriter().write("<h1>Liste des collaborateurs</h1>"
				+ "<ul>"
				+ "<li>avecPhoto = " + avecPhotoParam + "</li>"
				+ "<li>departement = " + departementParam + "</li>"
				+ "</ul>");
	}

}
