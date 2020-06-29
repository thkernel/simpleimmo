$(document).on('turbolinks:load', function(){



    // Filter doctor by service.
    $('#mandate-modal').on('shown.bs.modal', function() {
        ajaxPostData("#mandate_building_id", "/mandates/get_properties", "GET");
        //ajaxPostData("#mandate_property_id", "/leases/get_property_rent", "GET");
    });




    $('#mandate-modal').on('change', 'select', function(event) {
	          
	    target_id = event.target.id;
	    target_value = $("#"+target_id ).val();
	    console.log("Value: ", target_value);
	     console.log("ID :", target_id);
	    //console.log(target_id)
	    if (target_value != null && target_id == "mandate_property_tax_rate"){
	     //ajaxFilterPost('#'+target_id, "/sales/get_medicament_price", "GET");


		    vat = target_value;
		    property_value = parseFloat($("#mandate_property_value").val());

		    vat_amount = parseFloat((property_value * target_value) / 100);

		    console.log("VAT AMOUNT: ", vat_amount);
		    property_tax_amount = parseFloat(vat_amount);
		    console.log("NET AMOUNT: ", property_tax_amount);
		    $("#mandate_property_tax_amount").val(property_tax_amount);

	    }
	});


	$('#mandate-modal').on('focusout', 'input', function(event) {
	          
	    target_id = event.target.id;
	    target_value = $("#"+target_id ).val();
	    console.log("Value: ", target_value);
	    console.log("ID :", target_id);

	    //console.log(target_id)
	    if (target_value != null && target_id == "mandate_commission_rate"){
	     //ajaxFilterPost('#'+target_id, "/sales/get_medicament_price", "GET");


		    mandate_commission_rate = parseFloat(target_value);
		    property_value = parseFloat($("#mandate_property_value").val());

		    commission_amount = parseFloat((property_value * mandate_commission_rate) / 100);
		    
		    console.log("COMMISSION AMOUNT: ", commission_amount);
		    
		    $("#mandate_commission_amount").val(commission_amount);

	    }
	});


});

