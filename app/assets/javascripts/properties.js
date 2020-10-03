$(document).on('turbolinks:load', function(){

    $('#property-modal').on('shown.bs.modal', function() {
        displayBuildings();
        
        $("#property_property_type_id").on('change', function(){
            displayBuildings();
        });



        function displayBuildings(){


            property_type = document.getElementById("property_property_type_id")
            property_type = property_type.options[property_type.selectedIndex].text;
           
            if (property_type != null && property_type == "Immeuble"){
                $(".buildings").css("display", "block");
                
            }
            else{
                $(".buildings").css("display", "none");
        
            }
        }
    });

});






$(document).on('turbolinks:load', function(){


   $('#property-modal').on('shown.bs.modal', function() {
        ajaxPostData("#property_building_id", "/properties/get_landlord", "GET");
    });


    
    $('#lease-modal').on('shown.bs.modal', function() {
        ajaxPostData("#lease_building_id", "/leases/get_available_properties", "GET");
        ajaxPostData("#lease_property_id", "/leases/get_property_rent", "GET");
    });

});
