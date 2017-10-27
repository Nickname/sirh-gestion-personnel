package dev.sgp.model;

public enum Departement {
	COMPTA("Compatibilité"), RH("Ressources Humaines"), INFORMATIQUE("Informatique"), NR("Non renseigné");
	
	private String libelle;

	private Departement(String libelle) {
		this.libelle = libelle;
	}	
	
	public String getLibelle() {
		return libelle;
	}
}
