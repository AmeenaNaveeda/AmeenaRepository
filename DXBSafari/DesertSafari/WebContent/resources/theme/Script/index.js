$(document).ready(function() {
  var modal = document.getElementById("signup-modal");
  $(".sign-up").click(function() {
    document.getElementById("signup-modal").style.display = "block";
  });
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
});
