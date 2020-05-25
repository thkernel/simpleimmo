// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//Default
// require rails-ujs
// require turbolinks
// require_tree .

//By me
//= require jquery
//= require rails-ujs

// require geocomplete
// require jquery.geocomplete
//= require turbolinks
//= require lib/popper.js/umd/popper.min

//= require bootstrap-sprockets
//= require bootstrap
//= require toastr
//= require rails.validations
//= require js/bracket
//= require lib/moment/min/moment.min
//= require lib/perfect-scrollbar/perfect-scrollbar.min
//= require js/ResizeSensor
//= require js/dashboard
//= require lib/rickshaw/vendor/d3.min
//= require lib/rickshaw/vendor/d3.layout.min
//= require lib/rickshaw/rickshaw.min
//= require lib/datatables.net/js/jquery.dataTables.min
//= require lib/datatables.net-dt/js/dataTables.dataTables.min
//= require lib/datatables.net-responsive/js/dataTables.responsive.min
//= require lib/datatables.net-responsive-dt/js/responsive.dataTables.min
//= require lib/peity/jquery.peity.min
//= require lib/jquery.flot/jquery.flot
//= require cocoon

$(document).on('turbolinks:load', function() {
      $('#datatable1').DataTable({
            "searching": true,
        "ordering": true,
        language: {
            processing: "Traitement en cours...",
            search: "Rechercher&nbsp;:",
            lengthMenu: "Afficher _MENU_ &eacute;l&eacute;ments",
            info: "Affichage de l'&eacute;lement _START_ &agrave; _END_ sur _TOTAL_ &eacute;l&eacute;ments",
            infoEmpty: "Affichage de l'&eacute;lement 0 &agrave; 0 sur 0 &eacute;l&eacute;ments",
            infoFiltered: "(filtr&eacute; de _MAX_ &eacute;l&eacute;ments au total)",
            infoPostFix: "",
            loadingRecords: "Chargement en cours...",
            zeroRecords: "Aucun &eacute;l&eacute;ment &agrave; afficher",
            emptyTable: "Aucune donnée disponible dans le tableau",
            paginate: {
                first: "Premier",
                previous: "Pr&eacute;c&eacute;dent",
                next: "Suivant",
                last: "Dernier"
            },
            aria: {
                sortAscending: ": activer pour trier la colonne par ordre croissant",
                sortDescending: ": activer pour trier la colonne par ordre décroissant"
            }
        },
        responsive: false
          });
  });

  