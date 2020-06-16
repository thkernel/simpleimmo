$(document).on('change', 'select', function(event) {
          
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