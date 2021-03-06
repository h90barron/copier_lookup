// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .


//use turbolinks:load to avoid DOM load issues
$(document).on('turbolinks:load', function() {
    $("tr[data-link]").click(function() {
    window.location = $(this).data('link');
    });
})


// $(function() {
//     $("td[colspan=3]").find("p").hide();
//     $("table").click(function(event) {
//         event.stopPropagation();
//         var $target = $(event.target);
//         if ( $target.closest("td").attr("colspan") > 1 ) {
//             $target.slideUp();
//         } else {
//             $target.closest("tr").next().find("p").slideToggle();
//         }                    
//     });
// });