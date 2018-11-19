$(document).ready(function() {
  var modal = document.getElementById("book-slot-modal");
  $(".book-slot").click(function() {
    document.getElementById("book-slot-modal").style.display = "block";
    $(".event-slot").attr("style","display:none !important");
    $(".time-slot").attr("style","display:block !important");
  });
  $(".event-select").click(function() {
    document.getElementById("book-slot-modal").style.display = "block";
    $(".event-slot").attr("style","display:block !important");
    $(".time-slot").attr("style","display:none !important");
  });
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }

/*  $(function(){
    $('#datepicker').datepicker({
      inline: true,
      showOtherMonths: true,
      dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    });
  });*/

  $(".dropdown dt a").on('click', function() {
    $(".dropdown dd ul").slideToggle('fast');
  });

  $(".dropdown dd ul li a").on('click', function() {
    $(".dropdown dd ul").hide();
  });

  function getSelectedValue(id) {
    return $("#" + id).find("dt a span.value").html();
  }

  $(document).bind('click', function(e) {
    var $clicked = $(e.target);
    if (!$clicked.parents().hasClass("dropdown")) $(".dropdown dd ul").hide();
  });

  $('.mutliSelect input[type="checkbox"]').on('click', function() {

    var title = $(this).closest('.mutliSelect').find('input[type="checkbox"]').val(),
      title = $(this).val() + ",";

    if ($(this).is(':checked')) {
      var html = '<span class="select-items item-selected" title="' + title + '">' + title + '</span>';
      $('.multiSel').append(html);
      $('span[class="hida select-items"]').remove();
    } else {
      $('span[title="' + title + '"]').remove();
      var html = '<span class="hida select-items">Select your slot</span>';
      var til1=$(".multiSel").text().trim();
      var til2=$(".multiSel").val().trim();
      if($(".multiSel").text().trim()==""){
        $('.multiSel').append(html);
      }
    }

  });
});
