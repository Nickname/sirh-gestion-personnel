package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.model.Collaborateur;
import dev.sgp.model.Departement;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class CollaborateursController extends HttpServlet {

	/** serialVersionUID : long */
	private static final long serialVersionUID = 1L;
	
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ArrayList<String> params = new ArrayList<>();
		res.setCharacterEncoding("UTF-8");
		
		params.add(req.getParameter("nom"));
		params.add(req.getParameter("prenom"));
		params.add(req.getParameter("date_naissance"));
		params.add(req.getParameter("adresse"));
		params.add(req.getParameter("num_social"));
		
		params.stream().forEach(p -> {
			if (p == null) {
				try {
					res.sendError(400, "Il manque un/des paramètre(s)");
					throw new Exception("Erreur de paramètre");
				} catch (Exception e) {
					System.out.println("Erreur serveur : " + e.getMessage());
				}
			}
		});
		
		Collaborateur collab = new Collaborateur(params.get(1), params.get(0));
		collab.setDateNaissance(LocalDate.parse(params.get(2)));
		collab.setAdresse(params.get(3));
		
		if (params.get(4).length() == 15) {
			collab.setNumeroSocial(params.get(4));
		} else {
			res.sendError(400, "Le numéro de sécurité sociale doit contenir 15 numéros");
		}
		
		String mailDomain = ResourceBundle.getBundle("application").getString("mail");
		collab.setEmail(collab.getPrenom() + "." + collab.getNom() + "@" + mailDomain);
		collab.setDepartement(Departement.NR);
		collab.setActif(true);
		
		collabService.saveCollaborateur(collab);
		
		req.setAttribute("listeCollabo", collabService.listCollaborateur());
		res.setStatus(200);
		req.getRequestDispatcher("/WEB-INF/view/lister.jsp").forward(req, res);
	}

}
