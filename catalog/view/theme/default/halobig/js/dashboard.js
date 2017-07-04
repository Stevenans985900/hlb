$(document).ready(function() {       
    $('#amountInvest').change(function(){
        var Floor = $('#amountInvest').val();
        if (Floor == 'other') {
            $('#inputAmount').show();
        }else{
            $('#inputAmount').hide();
        }
     
    });
    $('input#ValAmount').keydown(function(event) {
        if (event.keyCode === 13) {
            return true;
        }
        if (!(event.keyCode == 8 || event.keyCode == 46 || (event.keyCode >= 35 && event.keyCode <= 40) || (event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode >= 96 && event.keyCode <= 105))) {
            event.preventDefault();
        }
    });

    $('form#frmIv button#submit').on('click', function() {
        var amount1 = $('#amountInvest').val();
        var amount2 = $('#ValAmount').val();
        var term = $('#Term').val();
        var amount = 0;
        $('#msg-error').fadeOut('slow');
        amount1 = $.trim(amount1);
        amount2 = $.trim(amount2);
        term = $.trim(term);
        if (amount1=="#") {
            $('#msg-error').fadeIn('slow');
            $('.cf-msg').fadeIn().html('Vui lòng chọn số tiền bạn cần đầu tư');
            return false;
        }else if (amount1 == "other") {
            if (amount2 == '' || amount2 <= 500000000) {
                $('#msg-error').fadeIn('slow');
                $('.cf-msg').fadeIn().html('Vui lòng nhập số tiền (> 500,000,000 VNĐ) bạn cần đầu tư');
                return false;
            }else{
                $('#msg-error').fadeOut();
                amount = amount2;
            }
        }else{
            $('#msg-error').fadeOut('slow');
            amount = amount1;
        }

        if (term=="#") {
            $('#msg-error').fadeIn('slow');
            $('.cf-msg').fadeIn().html('Vui lòng chọn kỳ hạn bạn cần đầu tư');
            return false;
        }else{
            $('#msg-error').fadeOut();
        }
        
        if (amount != 0 && term != '') {
            var values = "amount=" + amount + "&term=" + term;
            $.ajax({
                type: "POST",
                url: "TermInvestmentSubmit",
                data: values,
                success: function(result) {
                    result = $.parseJSON(result);

                    if (result.success == 1) {
                        $('#amountInvest').val('');
                        $('#ValAmount').val('');
                        $('#Term').val('');
                        $('#msg-success').fadeIn();
                        $('.cf-msg-success').fadeIn().html('Tạo gói đầu tư thành công!');
                        setTimeout(function() {
                            $('#msg-success').fadeOut('slow');
                            window.location.href = result.link;
                            // location.reload(true);
                        }, 1000);
                    }else{
                        
                        $('#msg-error').fadeIn('slow');
                        $('.cf-msg').fadeIn().html('Đã xảy ra lỗi. Bạn vui lòng thử lại');
                        
                    }
                   

                }
            });
        } else {
            $('.cf-msg').fadeIn().css('background-color', 'rgba(181,62,75,0.7)').html('<p>Please fillup the informations correctly.</p>')
        }


        return false;
    });


    function readURLImg(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result).show().css({'width': '100%','height':'250px'});
                 $('#old_img').hide();
            }

            reader.readAsDataURL(input.files[0]);
        }else{
            $('#blah').hide();
        }
    }
    $("#bill").on('change' , function (env) {

         
         $('.error-file').hide(); 
        var fileExtension = [ 'jpg', 'png', 'gif'];
        if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
            if($("#bill").val())
            {
                  
               $('.error-file').show(); 
           }
           else
           {
                $('.error-file').hide(); 
           }
            $('#comfim-pd').resetForm();
        }else
        {
            readURLImg(this);
            $('.error-file').hide();
            $('#old_img').hide();
        }
    });

    $('#frmIvcf').on('submit', function(){
        var fileExtension = ['jpeg', 'jpg', 'png', 'gif', 'bmp'];
        $(this).ajaxSubmit({
            type : 'POST',
            beforeSubmit : function(arr, $form, options) {
                if ($.inArray($('#bill').val().split('.').pop().toLowerCase(), fileExtension) == -1) {
                    if(!$("#bill").val()){
                       $('.error-file').show();
                       return false;
                   }else{
                        $('.error-file').hide(); 
                   }
                }else{
                    $('.error-file').hide();
                }
            },
            success : function(result){
                result = $.parseJSON(result);
                if (result.complete == 1){
                    alertify.set('notifier','delay', 3000);
                    alertify.set('notifier','position', 'top-right');
                    alertify.success('Cập nhập hóa đơn thành công');
                   
                     setTimeout(function() {
                            window.location.href = result.link;
                            // location.reload(true);
                        }, 1000);
                }
            }
        });
        return false;
    });

});