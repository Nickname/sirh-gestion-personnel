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
  <script>
  function valider() {
		document.forms[0].action = "http://localhost:8080/sgp/api/collaborateurs";
		document.forms[0].method = "POST";
		document.forms[0].submit();
  }
  </script>
  <script src="<%=request.getContextPath()%>/script/nav.js"></script>
  <script src="<%=request.getContextPath()%>/script/valid_form.js"></script>
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/style.css">
  
</head>
<body id="collaborateurs">
  <header id="bandeau" class="">
  </header>

  <div id="container" class="col-12 top50">

  <h1 class="row top10 col-md-12 col-lg-12">Nouveau collaborateur</h1>

    <form id="data">
      <div class="col-10 top10 offset-1">
        <div class="row">
          <div class="col mb-3">
            <label for="nom">Nom</label>
            <input type="text" class="form-control" id="nom" name="nom" required>
            <div class="invalid-feedback">
              Nom obligatoire
            </div>
          </div>
          <div class="col mb-3">
            <label for="prenom">Prénom</label>
            <input type="text" class="form-control" id="prenom" name="prenom" required>
            <div class="invalid-feedback">
              Prénom obligatoire
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col mb-3">
            <label for="date_naissance">Date de naissance</label>
            <input type="date" class="form-control" id="date_naissance" name="date_naissance" required>
            <div class="invalid-feedback">
              Date de naissance obligatoire
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col mb-3">
            <label for="adresse">Adresse</label>
            <input type="text" class="form-control" id="adresse" name="adresse" required>
            <div class="invalid-feedback">
              Adresse obligatoire
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col mb-3">
            <label for="num_social">Numéro de sécurité sociale</label>
            <input type="text" class="form-control" id="num_social" name="num_social" maxlength="15" required>
            <div class="invalid-feedback">
              Numéro de sécurité sociale obligatoire
            </div>
          </div>
        </div>
        <div class="row col offset-5 top10">
          <button id="send" type="submit" class="btn btn-primary" data-toggle="modal" data-target="#ajoutModal" disabled>Sauvegarder</button>
        </div>
      </form>

    </div>

      <!-- Modal -->
      <div class="modal fade" id="ajoutModal" tabindex="-1" role="dialog" aria-labelledby="ajoutModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="ajoutModalLabel">Ajouter un collaborateur</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="col-12"><p>Vous êtes sur le point de créer un nouveau collaborateur :</p></div>
              <div id="form-contenu" class="row">
              	<div class='col-5'><p>Nom</p></div>
              	<div id='val_nom' class='col-7'><p></p></div>
              	<div class='col-5'><p>Prénom</p></div>
              	<div id='val_prenom' class='col-7'><p></p></div>
              	<div class='col-5'><p>Date de naissance</p></div>
              	<div id='val_date_naissance' class='col-7'><p></p></div>
              	<div class='col-5'><p>Adresse</p></div>
              	<div id='val_adresse' class='col-7'><p></p></div>
              	<div class='col-5'><p>Numéro de sécurité sociale</p></div>
              	<div id='val_num_social' class='col-7'><p></p></div>
              	
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
              <input id="envoyer" type="submit" class="btn btn-primary" value="Valider" onclick="valider()"/>
            </div>
          </div>
        </div>
      </div>


  </div>
</body>
</html>
