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

    $("#val_nom>p").val() = $("#nom").val();

    $("#form-contenu").append("");
    $("#form-contenu").append("<div class='col-7'><p>" + $("#prenom").val() + "</p></div>");

    $("#form-contenu").append("<div class='col-5'><p>Date de naissance</p></div>");
    $("#form-contenu").append("<div class='col-7'><p>" + $("#date_naissance").val() + "</p></div>");

    $("#form-contenu").append("<div class='col-5'><p>Adresse</p></div>");
    $("#form-contenu").append("<div class='col-7'><p>" + $("#adresse").val() + "</p></div>");

    $("#form-contenu").append("<div class='col-5'><p>Numéro de sécurité sociale</p></div>");
    $("#form-contenu").append("<div class='col-7'><p>" + $("#num_social").val() + "</p></div>");
  });

});

function valider() {
  	document.form[0].action = "http://localhost:8080/api/collaborateurs";
  	document.form[0].method = "POST";
  	document.form[0].submit();
}
