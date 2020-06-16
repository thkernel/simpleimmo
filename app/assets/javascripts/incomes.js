$(document).on('turbolinks:load', function(){
    $('#income-modal').on('shown.bs.modal', function() {

        function displayPaymentDates(){
            payment_type = $('#income_type').val();

            if (payment_type != null && payment_type == "Loyer"){
                $(".payment_dates").css("display", "block");
               
                
            }
            
            else{
                $(".payment_dates").css("display", "none");
                
            }
        }
        
        displayPaymentDates();
        
        $("#income_type").on('change', function(){
            displayPaymentDates();
        })

    });



})
