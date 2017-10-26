package dev.sgp.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateursController extends HttpServlet {

	/** serialVersionUID : long */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		if (req.getParameter("matricule") != null) {
			res.setStatus(201);
			res.getWriter().write("<h1>Editer collaborateurs</h1>"
							+ "Matricule: " + req.getParameter("matricule"));
		} else {
			res.sendError(400, "Aucun matricule");
		}
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ArrayList<String> params = new ArrayList<>();
		res.setCharacterEncoding("UTF-8");
		
		params.add(req.getParameter("matricule"));
		params.add(req.getParameter("titre"));
		params.add(req.getParameter("nom"));
		params.add(req.getParameter("prenom"));
		
		params.stream().forEach(p -> {
			if (p == null)
				try {
					res.sendError(400, "Il manque un/des paramètre(s)");
					throw new Exception("Erreur de paramètre");
				} catch (Exception e) {
					e.printStackTrace();
				}
		});
		
		res.setStatus(200);
		res.getWriter().write("Création d'un collarborateur avec les informations suivantes :<br>"
				+ params.stream().collect(Collectors.joining(",")));
	}
}
