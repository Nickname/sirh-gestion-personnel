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
</head>
<body id="collaborateurs">
  <header id="bandeau" class="">
  </header>

  <div id="container" class="col-md-12 col-lg-12 top10">

    <div id="edition" class="row">
      <div class="col-4 top30">
        <img class="img-responsive" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmtRhS0il0UU65L4prJy0ZtbBP5iVWQQB7JyYYL4dtM9Q2BJ3yLQ" style="margin-left: 10%;" alt="">
      </div>

      <div class="col-8">
        <div class="row">
          <div class="col-10">
            <h1 class="display-p4">Nom PrÃ©nom - Matricule</h1>
          </div>
          <div class="col-1">
            <button type="button" class="btn btn-danger top10" name="button">DÃ©sactiver</button>
          </div>
        </div>

          <div id="accordion" role="tablist" class="top17">

            <div class="card">
              <div class="card-header" role="tab" id="headingOne">
                <h5 class="mb-0">
                  <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    IdentitÃ©
                  </a>
                </h5>
              </div>

              <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">
                  <form>
                    <div class="row">
                      <div class="col-11 mb-3">
                        <label for="civilite">CivilitÃ©</label>
                        <select id="civilite" class="form-control col-6">
                          <option value="ComptabilitÃ©">Mr.</option>
                          <option value="Ressources Humaines">Mme.</option>
                        </select>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col mb-3">
                        <label for="nom">Nom</label>
                        <input type="text" class="form-control" id="nom" required>
                        <div class="invalid-feedback">
                          Nom obligatoire
                        </div>
                      </div>
                      <div class="col mb-3">
                        <label for="prenom">PrÃ©nom</label>
                        <input type="text" class="form-control" id="prenom" required>
                        <div class="invalid-feedback">
                          PrÃ©nom obligatoire
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-6 mb-3">
                        <label for="date_naissance">Date de naissance</label>
                        <input type="date" class="form-control" id="date_naissance" required>
                        <div class="invalid-feedback">
                          Date de naissance obligatoire
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-12 mb-3">
                        <label for="adresse">Adresse</label>
                        <input type="text" class="form-control" id="adresse" required>
                        <div class="invalid-feedback">
                          Adresse obligatoire
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-12 mb-3">
                        <label for="num_social">NumÃ©ro de sÃ©curitÃ© sociale</label>
                        <input type="text" class="form-control" id="num_social" required>
                        <div class="invalid-feedback">
                          NumÃ©ro de sÃ©curitÃ© sociale obligatoire
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-6 mb-3">
                        <label for="tel">TÃ©lÃ©phone</label>
                        <input type="text" class="form-control" id="tel">
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>


            <div class="card">
              <div class="card-header" role="tab" id="headingTwo">
                <h5 class="mb-0">
                  <a data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Poste
                  </a>
                </h5>
              </div>

              <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">
                  <form>
                    <div class="top10 offset-1">
                      <div class="row">
                        <div class="col-md-11 mb-3">
                          <label for="nom">DÃ©partement</label>
                          <input type="text" class="form-control" id="nom">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-11 mb-3">
                          <label for="prenom">Nom</label>
                          <input type="text" class="form-control" id="prenom">
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header" role="tab" id="headingThree">
                <h5 class="mb-0">
                  <a data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseTwo">
                    CoordonnÃ©es Bancaires
                  </a>
                </h5>
              </div>

              <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">
                  <form>
                    <div class="top10 offset-1">
                      <div class="row">
                        <div class="col-md-11 mb-3">
                          <label for="nom">IBAN</label>
                          <input type="text" class="form-control" id="nom">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-11 mb-3">
                          <label for="prenom">BIC</label>
                          <input type="text" class="form-control" id="prenom">
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>

        <div class="offset-10 col-1 top17">
          <button id="send" type="submit" class="btn btn-primary" data-toggle="modal" data-target="#ajoutModal" disabled>Sauvegarder</button>
        </div>
      </div>
    </div>
</body>
</html>
