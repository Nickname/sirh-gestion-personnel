package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.model.Collaborateur;

public class CollaborateurService {
	List<Collaborateur> collaborateurs = new ArrayList<>();
	
	public CollaborateurService() {	
		init();
	}
	
	public void init() {
		collaborateurs.add(new Collaborateur("Pingouin", "Bec"));
	}
	
	public List<Collaborateur> listCollaborateur() {
		return collaborateurs;
	}
	
	public void saveCollaborateur(Collaborateur collabo) {
		collaborateurs.add(collabo);
	}

}
