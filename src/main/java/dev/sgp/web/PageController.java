package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.model.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

import java.util.List;
import java.util.ResourceBundle;
import java.util.regex.Pattern;

@WebServlet("/page/*")
public class PageController extends HttpServlet {

	/** serialVersionUID : long */
	private static final long serialVersionUID = 1L;
	
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String path = req.getRequestURI();
		final String START_URI = "/sgp/page";
		
		String pathLister = START_URI + "/collaborateurs/lister";
		String pathCreer = START_URI + "/collaborateurs/creer";
		
		String pathStatistique = START_URI + "/statistiques";
		String pathActivite = START_URI + "/activites";
		
		if (Pattern.matches(pathLister, path)) {
			listerCollaborateurs(req, res);
		} else if (Pattern.matches(pathCreer, path)) {
			req.getRequestDispatcher("/WEB-INF/view/creer.jsp").forward(req, res);
		} else if (Pattern.matches(pathStatistique, path)) {
			req.getRequestDispatcher("/WEB-INF/view/statistique.jsp").forward(req, res);
		} else if (Pattern.matches(pathActivite, path)) {
			req.getRequestDispatcher("/WEB-INF/view/activite.jsp").forward(req, res);
		} else {
			res.sendError(400, "La page " + path + " n'existe pas");
		}
	}
	
	private void listerCollaborateurs(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		List<Collaborateur> collaborateurs = collabService.listCollaborateur();

		String mailDomain = ResourceBundle.getBundle("application").getString("mail");
		collaborateurs.stream().forEach(c -> c.setEmail(c.getPrenom() + "." + c.getNom() + "@" + mailDomain));
		
		req.setAttribute("listeCollabo", collaborateurs);
		req.getRequestDispatcher("/WEB-INF/view/lister.jsp").forward(req, res);
	}
}
