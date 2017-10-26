package dev.sgp.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.model.Collaborateur;
import static dev.sgp.util.Constantes.*;

public class CollaborateursController extends HttpServlet {

	/** serialVersionUID : long */
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		List<Collaborateur> collaborateurs = COLLAB_SERVICE.listCollaborateur();
		
		req.setAttribute("listeCollabo", collaborateurs);
		req.getRequestDispatcher("/WEB-INF/view/lister.jsp").forward(req, res);
	}

}
