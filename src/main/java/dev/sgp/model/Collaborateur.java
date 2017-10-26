package dev.sgp.model;

import java.time.LocalDate;
import java.time.ZonedDateTime;

public class Collaborateur {
	private int id;
	private static int currentId = 0;
	
	private String prenom;
	private String nom;
	private String fonction;
	private int departement;
	private String email;
	private String tel;
	private String matricule;
	private LocalDate dateNaissance;
	private String numeroSocial;
	private ZonedDateTime dateCreation;
	private boolean actif;
	
	public Collaborateur(String prenom, String nom, String fonction, int departement, String email, String tel) {
		this.id = currentId++;
		this.prenom = prenom;
		this.nom = nom;
		this.fonction = fonction;
		this.departement = departement;
		this.email = email;
		this.tel = tel;
		//this.dateCreation = new ZonedDateTime(null, null, null);
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getPrenom() {
		return prenom;
	}
	
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	public String getNom() {
		return nom;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getFonction() {
		return fonction;
	}
	
	public void setFonction(String fonction) {
		this.fonction = fonction;
	}
	
	public int getDepartement() {
		return departement;
	}
	
	public void setDepartement(int departement) {
		this.departement = departement;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getTel() {
		return tel;
	}
	
	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMatricule() {
		return matricule;
	}

	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}

	public LocalDate getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(LocalDate dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public String getNumeroSocial() {
		return numeroSocial;
	}

	public void setNumeroSocial(String numeroSocial) {
		this.numeroSocial = numeroSocial;
	}

	public ZonedDateTime getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(ZonedDateTime dateCreation) {
		this.dateCreation = dateCreation;
	}

	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}
}
