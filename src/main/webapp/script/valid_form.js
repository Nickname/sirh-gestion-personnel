$(document).ready(function() {

  $(".form-control").on("focusout", function() {
    var elem = $(this);
    
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

    $("#val_nom>p").text($("#nom").val());

    $("#val_prenom>p").text($("#prenom").val());
    
    $("#val_date_naissance>p").text($("#date_naissance").val());
    
    $("#val_adresse>p").text($("#adresse").val());
    
    $("#val_num_social>p").text($("#num_social").val());
  });
  
  $("#envoyer").on("submit", function() {
	  	document.form[0].action = "http://localhost:8080/api/collaborateurs";
	  	document.form[0].method = "POST";
	  	document.form[0].submit();
	});

});

