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
		collaborateurs.add(collab);
		
	}
	
	public List<Collaborateur> listCollaborateur() {
		return collaborateurs;
	}
	
	public void saveCollaborateur(Collaborateur collabo) {
		collaborateurs.add(collabo);
	}

}
