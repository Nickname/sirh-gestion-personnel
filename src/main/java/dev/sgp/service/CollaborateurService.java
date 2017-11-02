package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.model.Collaborateur;
import dev.sgp.model.Departement;

public class CollaborateurService {
	List<Collaborateur> collaborateurs = new ArrayList<>();
	
	public CollaborateurService() {	
		init();
	}
	
	public void init() {
		Collaborateur collab = new Collaborateur("Pingouin", "Bec");
		collab.setDepartement(Departement.RH);
		Collaborateur collab2 = new Collaborateur("salut", "coucou");
		collab2.setDepartement(Departement.INFORMATIQUE);
		Collaborateur collab3 = new Collaborateur("hello", "coucou2");
		collab3.setDepartement(Departement.COMPTA);
		collaborateurs.add(collab);
		collaborateurs.add(collab2);
		collaborateurs.add(collab3);
		
	}
	
	public List<Collaborateur> listCollaborateur() {
		return collaborateurs;
	}
	
	public void saveCollaborateur(Collaborateur collabo) {
		collaborateurs.add(collabo);
	}

}
