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
<body id="activites">
  <header id="bandeau" class="">
  </header>

  <div id="container" class="col-12 top50">

    <h1 class="display-4">Activités depuis le démarrage</h1>

    <table class="table table-bordered table-hover">
      <thead class="thead-light">
        <tr>
          <th>Date/Heure</th>
          <th>Libellé</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>10/10/2017 10:50:52</td>
          <td>Création d'un nouveau collarborateur - matricule XXXXXX (lien)</td>
        </tr>
        <tr>
          <td>10/10/2017 10:52:52</td>
          <td>Modification d'un collarborateur - matricule XXXXXX (lien)</td>
        </tr>
      </tbody>
    </table>

  </div>
</body>
</html>
