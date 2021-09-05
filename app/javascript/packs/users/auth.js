
controlSubmit = function (){
  is_agree_term = $("#agreeTerms").prop("checked")
  if (is_agree_term) {
    $("#sign_up_submit").prop("disabled", false);
  } else {
    $("#sign_up_submit").prop("disabled", true);
  }
}


window.onload = function() {
  controlSubmit()
};
