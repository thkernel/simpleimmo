
$(document).on('turbolinks:load', function(){

	
    $('#lease-modal').on('shown.bs.modal', function() {
		displayBuildings();
		$("#lease_property_type_id").on('change', function(){
			displayBuildings();
			ajaxPostData("#lease_property_type_id", "/leases/get_properties_by_type", "GET");

		})
		
		function displayBuildings(){

	
			property_type = document.getElementById("lease_property_type_id")
			console.log("PROPERTY TYPE:", property_type);
			property_type = property_type.options[property_type.selectedIndex].text;
		   
			if (property_type != null && property_type == "Immeuble"){
				$(".buildings").css("display", "block");
				
			}
			else{
				$(".buildings").css("display", "none");
		
			}
		}

		
        ajaxPostData("#lease_building_id", "/leases/get_properties", "GET");
		ajaxPostData("#lease_property_id", "/leases/get_property_rent", "GET");
		

    });
});


$(document).on('change', '#lease_vat_rate select', function(event) {
          
    target_id = event.target.id;
    target_value = $("#"+target_id ).val();
    console.log("Value: ", target_value);
     console.log("ID :", target_id);
    //console.log(target_id)
    if (target_value != null && target_id == "lease_vat_rate"){
     //ajaxFilterPost('#'+target_id, "/sales/get_medicament_price", "GET");


	    vat = target_value;
	    rent = parseFloat($("#lease_rent_excluding_tax").val());

	    vat_amount = parseFloat((rent * target_value) / 100);
	    console.log("VAT AMOUNT: ", vat_amount);
	    net_amount = parseFloat(rent + vat_amount);
	    console.log("NET AMOUNT: ", net_amount);
	    $("#lease_net_amount").val(net_amount);

    }
});