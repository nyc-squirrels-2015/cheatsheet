$(document).ready(function() {
  $('#add_cat').on("click", function(event){
    event.preventDefault();
    var $click = $(this)
    console.log($click.attr("href"))
    $.ajax({
      type: "GET",
      url: $click.attr("href")
    }).done(function(response){console.log(response)
      $('ul').prepend(response)
    })
  })

  $("body").on("submit", "#catform", function(event){
    event.preventDefault();
    var $form = $("#catform")
    $.ajax({
      type: $form.attr("method"),
      url: $form.attr("action"),
      data: $form.serialize(),
      success: function(response){console.log(response)
        $("ul").append("<li><a href='/category/"+ response.id + "'>" + response.name +"</a></li>")
        $("#catform").hide();
      }

    })

  })

});
