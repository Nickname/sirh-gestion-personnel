<%@ page import="dev.sgp.model.Collaborateur" %>
<%@ page import="java.util.List" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Les collaborateurs</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
  <script src="<%=request.getContextPath()%>/script/nav.js"></script>
  <script>
  	function filter(value) {
  		$("#collabo").hide();
  		if (value == "All") {
  			$("#collabo").show();
  		} else {
  			if ($("#dep").hasClass(value)) {
  				$("#collabo").show();
  			}
  		}
  	}
  </script>
</head>
<body id="collaborateurs">
  <header id="bandeau" class="">
  </header>

  <div id="container" class="col-12 top10">

    <div class="row offset-8 col-4">
      <a href="http://localhost:8080/sgp/page/collaborateurs/creer">
        <button class="btn btn-primary btn-block" type="button" name="button">
          Ajouter un nouveau collaborateur
        </button>
      </a>
    </div>

    <h1 class="row col-12 display-4">Les collaborateurs</h1>

    <div id="filtre" class="row top15 input-group">
      <div id="recherche" class="col-9 form-group">
        <div id="filtre_name" class="row col-12">
          <div class="col-8">Rechercher un nom ou un prénom qui commence par : </div>
          <input type="text" class="col-4 form-control" placeholder="Nom ou prénom"></input>
        </div>
        <div id="filtre_dep" class="row top5 col-12">
          <div class="col-8">Filtrer par département : </div>
          <select class="form-control col-4" id="filtre_dep" onchange="filter(this.value)">
            <option value="All">Tous</option>
            <option value="COMPTA">Comptabilité</option>
            <option value="RH">Ressources Humaines</option>
            <option value="INFORMATIQUE">Informatique</option>
          </select>
        </div>
      </div>
      <div id="collabo_desac" class="col-md-3 col-lg-3">
        <input type="checkbox" name="collabo_desac"> Voir les collaborateurs désactivés</input>
      </div>
    </div>

    <div id="liste_collabo" class="row top10">
    
	<% 
	
	List<Collaborateur> listeCollabo = (List<Collaborateur>) request.getAttribute("listeCollabo");
	
	for (Collaborateur collabo : listeCollabo) {
	
	%>

      <div id="collabo" class="card border-primary md-3" style="width: 20rem;">
        <h4 id="name" class="card-header"><%= collabo.getPrenom() + " " + collabo.getNom() %></h4>
        <div id="contenu" class="card-body">
          <img class="card-img-left img-responsive col-4" style="max-height:150px; margin-top:25%;" src="<%=request.getContextPath()%>/img/collabo<%= collabo.getId() %>.jpg" alt="">
          <div id="description" class="col-8">
            <span class="row">
              <p>Fonction</p>
              <p><%= collabo.getFonction() %></p>
            </span>
            <span class="row">
              <p>Département</p>
              <p id="dep" class="<%=collabo.getDepartement()%>"><%= collabo.getDepartement().getLibelle() %></p>
            </span>
            <span class="row">
              <p>Email</p>
              <p><%= collabo.getEmail() %></p>
            </span>
            <span class="row"><p>Téléphone</p><p><%= collabo.getTel() %></p></span>
          </div>
        </div>
        <a href="editer.html">
          <button id="editer" type="button" class="btn btn-primary" name="button">Editer</button>
        </a>
      </div>
      
	<%

	}

	%>

    </div>

  </div>
</body>
</html>
