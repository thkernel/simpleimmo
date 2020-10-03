


$(document).on('turbolinks:load', function(){

	
    $('#mandate-modal').on('shown.bs.modal', function() {
		displayBuildings();
		$("#mandate_property_type_id").on('change', function(){
			displayBuildings();
			ajaxPostData("#mandate_property_type_id", "/mandates/get_properties_by_type", "GET");

		})
		
		function displayBuildings(){

	
			property_type = document.getElementById("mandate_property_type_id")
			console.log("PROPERTY TYPE:", property_type);
			property_type = property_type.options[property_type.selectedIndex].text;
		   
			if (property_type != null && property_type == "Immeuble"){
				$(".buildings").css("display", "block");
				
			}
			else{
				$(".buildings").css("display", "none");
		
			}
		}

		
        ajaxPostData("#mandate_building_id", "/mandates/get_properties", "GET");
		ajaxPostData("#mandate_property_id", "/mandates/get_property_rent", "GET");
		

    });




    $('#mandate-modal').on('change', '#mandate_property_tax_rate', function(event) {
	          
	    target_id = event.target.id;
	    target_value = $("#"+target_id ).val();
	    console.log("Value: ", target_value);
	     console.log("ID :", target_id);
	    //console.log(target_id)
	    if (target_value != null && target_id == "mandate_property_tax_rate"){

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
	    

		    mandate_commission_rate = parseFloat(target_value);
		    property_value = parseFloat($("#mandate_property_value").val());

		    commission_amount = parseFloat((property_value * mandate_commission_rate) / 100);
		    
		    console.log("COMMISSION AMOUNT: ", commission_amount);
		    
		    $("#mandate_commission_amount").val(commission_amount);

	    }
	});


});

