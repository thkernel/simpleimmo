$(document).on('turbolinks:load', function(){

    $('#income-modal').on('shown.bs.modal', function() {

        function displayPaymentDates(){
            payment_type = $('#income_income_type').val();

            if (payment_type != null && payment_type == "Loyer"){
                $(".payment_dates").css("display", "block");
               
                
            }
            
            else{
                $(".payment_dates").css("display", "none");
                
            }
        }
        
        displayPaymentDates();
        
        $("#income_income_type").on('change', function(){
            displayPaymentDates();
        });



        //Get property rent.
        ajaxPostData("#income_property_id", "/incomes/get_property_rent", "GET");

    });



    $('#income-modal').on('change', 'select', function(event) {
              
        target_id = event.target.id;
        target_value = $("#"+target_id ).val();
        console.log("Value: ", target_value);
         console.log("ID :", target_id);
        //console.log(target_id)
        if (target_value != null && target_id == "income_tax_id"){
         //ajaxFilterPost('#'+target_id, "/sales/get_medicament_price", "GET");


            vat = target_value;
            amount = parseFloat($("#income_amount").val());

            vat_amount = parseFloat((amount * target_value) / 100);

            console.log("VAT AMOUNT: ", vat_amount);
            total_amount = parseFloat(amount + vat_amount);
            console.log("TOTAL AMOUNT: ", total_amount);
            $("#income_total_amount").val(total_amount);

        }
    });

})
