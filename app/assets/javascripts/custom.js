$(document).on('turbolinks:load', function(){

// Filter doctor by service.
    $('#property-modal').on('shown.bs.modal', function() {
        ajaxPostData("#property_building_id", "/properties/get_landlord", "GET");
    });


    // Filter doctor by service.
    $('#lease-modal').on('shown.bs.modal', function() {
        ajaxPostData("#lease_building_id", "/leases/get_properties", "GET");
        ajaxPostData("#lease_property_id", "/leases/get_property_rent", "GET");
    });


});