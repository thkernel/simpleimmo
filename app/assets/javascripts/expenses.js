$(document).on('turbolinks:load', function(){


	$('#expense-modal').on('change', 'select', function(event) {
		          
		    target_id = event.target.id;
		    target_value = $("#"+target_id ).val();

		    console.log("Value: ", target_value);
		     console.log("ID :", target_id);
		    //console.log(target_id)

		    if (target_value != null && target_id == "expense_tax_id"){
		    

			    vat = target_value;
			    amount = parseFloat($("#expense_amount").val());

			    vat_amount = parseFloat((amount * target_value) / 100);

			    console.log("VAT AMOUNT: ", vat_amount);
			    total_amount = parseFloat(amount + vat_amount);
			    console.log("NET AMOUNT: ", total_amount);
			    $("#expense_total_amount").val(total_amount);

		    }
	});


	$('#expense-modal').on('focusout', 'input', function(event) {
	          
	    target_id = event.target.id;
	    target_value = $("#"+target_id ).val();
	    console.log("Value: ", target_value);
	    console.log("ID :", target_id);

	    //console.log(target_id)
	    if (target_value != null && target_id == "expense_amount"){
	     
		    amount = parseFloat(target_value);
		    //total_amount = 0.0

		    vat_rate = parseFloat($("#expense_tax_id").val());

		    console.log("VAT RATE: ", vat_rate);

		    if (vat_rate != undefined && vat_rate != null  &&  vat_rate.length > 0){
		    	console.log("VAT IN", vat_rate);
		    	vat_amount = parseFloat((amount * vat_rate) / 100);
		    	total_amount = parseFloat(amount + vat_amount );
		    }
		    else{
		    	console.log("VAT ELSE", vat_rate);
		    	total_amount = parseFloat(amount);
		    }
		    
		    
		    console.log("COMMISSION AMOUNT: ", total_amount);
		    
		    $("#expense_total_amount").val(total_amount);

	    }
	});

	
});