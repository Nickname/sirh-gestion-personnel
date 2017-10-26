$(document).ready(function() {

  $(".form-control").on("focusout", function() {
    var elem = $(this);
    console.log("coucou");
    if(elem.val().length == 0) {
      elem.removeClass("is-valid");
      elem.addClass("is-invalid");
    } else {
      elem.removeClass("is-invalid");
      elem.addClass("is-valid");
    }
    if($("#nom").hasClass("is-valid") && $("#prenom").hasClass("is-valid") && $("#date_naissance").hasClass("is-valid") && $("#adresse").hasClass("is-valid") && $("#num_social").hasClass("is-valid")) {
      $("#send").removeAttr("disabled");
    } else {
      $("#send").prop("disabled", true);
    }
  });

  $("#send").on("click", function(e) {
    e.preventDefault();

    $("#form-contenu").append("<div class='col-5'><p>Nom</p></div>");
    $("#form-contenu").append("<div class='col-7'><p>" + $("#nom").val() + "</p></div>");

    $("#form-contenu").append("<div class='col-5'><p>Prénom</p></div>");
    $("#form-contenu").append("<div class='col-7'><p>" + $("#prenom").val() + "</p></div>");

    $("#form-contenu").append("<div class='col-5'><p>Date de naissance</p></div>");
    $("#form-contenu").append("<div class='col-7'><p>" + $("#date_naissance").val() + "</p></div>");

    $("#form-contenu").append("<div class='col-5'><p>Adresse</p></div>");
    $("#form-contenu").append("<div class='col-7'><p>" + $("#adresse").val() + "</p></div>");

    $("#form-contenu").append("<div class='col-5'><p>Numéro de sécurité sociale</p></div>");
    $("#form-contenu").append("<div class='col-7'><p>" + $("#num_social").val() + "</p></div>");
  });

});
