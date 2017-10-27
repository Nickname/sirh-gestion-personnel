package dev.sgp.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;

public class Collaborateur {
	private int id;
	private static int currentId = 100;
	
	private String prenom;
	private String nom;
	private String fonction;
	private String adresse;
	private String email;
	private String tel;
	private String matricule;
	private LocalDate dateNaissance;
	private String numeroSocial;
	private Departement departement;
	private String intitulePoste;
	private ZonedDateTime dateCreation;
	private boolean actif;
	
	public Collaborateur(String prenom, String nom) {
		this.id = currentId++;
		this.prenom = prenom;
		this.nom = nom;
		this.dateCreation = ZonedDateTime.of(LocalDateTime.now(), ZoneId.systemDefault());
		this.matricule = "M" + this.id;
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
	
	public Departement getDepartement() {
		return departement;
	}
	
	public void setDepartement(Departement departement) {
		this.departement = departement;
	}
	
	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
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

	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

	public String getIntitulePoste() {
		return intitulePoste;
	}

	public void setIntitulePoste(String intitulePoste) {
		this.intitulePoste = intitulePoste;
	}
}
