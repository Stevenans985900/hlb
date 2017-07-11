<!DOCTYPE html>
<html>
  
   <head>
      <title>Login - HALOBIG</title>
      <meta charset="utf-8">
      <meta content="ie=edge" http-equiv="x-ua-compatible">
      <meta content="template language" name="keywords">
      <meta content="Tamerlan Soziev" name="author">
      <meta content="Admin dashboard html template" name="description">
      <meta content="width=device-width, initial-scale=1" name="viewport">
      <link href="catalog/view/theme/default/images/logo.png" rel="shortcut icon">
      <link href="catalog/view/theme/default/assets/apple-touch-icon.png" rel="apple-touch-icon">
      <link href="catalog/view/theme/default/assets/bower_components/select2/dist/css/select2.min.css" rel="stylesheet">
      <link href="../fast.fonts.net/cssapi/175a63a1-3f26-476a-ab32-4e21cbdb8be2.css" rel="stylesheet">
      <link href="catalog/view/theme/default/assets/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
      <link href="catalog/view/theme/default/assets/bower_components/dropzone/dist/dropzone.css" rel="stylesheet">
      <link href="catalog/view/theme/default/assets/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet">
      <link href="catalog/view/theme/default/assets/bower_components/datatables/media/css/dataTables.bootstrap4.min.css" rel="stylesheet">
      <link href="catalog/view/theme/default/assets/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
      <link href="catalog/view/theme/default/assets/css/main.css" rel="stylesheet">
      <script src="https://www.google.com/recaptcha/api.js?hl=vn"></script>

      <link href="catalog/view/theme/default/css/customer.css" rel="stylesheet">
   </head>
   <body class="auth-wrapper">
      <div class="all-wrapper with-pattern">
         <div class="auth-box-w">
            <div class="logo-w" style="padding: 2%"><a href="index.html"><img alt="" src="catalog/view/theme/default/images/logo.png" style="width: 200px;"></a></div>
            <!-- <h4 class="auth-header">Đăng nhập tài khoản</h4> -->
            <form action="login.html" method="post" style="margin-top: 40px;">
               <div class="form-group">
                  <label for="">Username</label>
                  <input class="form-control" name="email" value="<?php echo $email; ?>" placeholder="Username" type="text">
                  <div class="pre-icon os-icon os-icon-user-male-circle"></div>
               </div>
               <div class="form-group">
                  <label for="">Password</label>
                  <input class="form-control" placeholder="Password" type="password" name="password" value="<?php echo $password; ?>">
                  <div class="pre-icon os-icon os-icon-fingerprint"></div>
               </div>

               <div class="form-group">
                  <!-- <div class="g-recaptcha" data-sitekey="6LdC1ScUAAAAAEgITftdhE4mnudcN_U-pUVUp46I"></div> -->
                  <!-- <div class="g-recaptcha" data-sitekey="6Ldi0ScUAAAAAGcMG7iGL3_PD7tWYzKRLO6VfRwr"></div> -->
               </div>
               <div class="buttons-w">
                  <button class="btn btn-primary">Login</button>
                  <div class="form-check-inline"><label class="form-check-label"><input class="form-check-input" type="checkbox">Remember</label></div>
               </div>
               <p><a href="forgot.html" style="margin-top: 6px; float: left;">Forgot Password?</a></p>
               <br>
               <div class="form-group">
                  <?php if ($redirect) { ?>
                     <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                     <?php } ?>
                  
                  <?php if ($success) { ?>
                  <div class="text-success"><i class="fa fa-check-circle"></i>
                     Notice: New password sent to your email
                  </div>
                  <?php } ?>
                  <?php if ($error_warning) { ?>
                  <div class="text-warning"><i class="fa fa-exclamation-circle"></i>
                     <?php echo $error_warning ?>
                  </div>
                  <?php } ?>
               </div>
            </form>
         </div>
      </div>
   </body>
<script src="catalog/view/theme/default/assets/js/jquery.min.js"></script> 
<script src="catalog/view/theme/default/assets/js/bootstrap.min.js"></script> 

<script src="catalog/view/javascript/alertifyjs/alertify.js" type="text/javascript"></script>
<link href="catalog/view/theme/default/css/al_css/alertify.css" rel="stylesheet">
</html>

<script type="text/javascript">
   if (location.hash === '#success') {
      xhtml = '<div class="col-md-12"><p class=""><b>Hello <span style="color:#01aeef"><?php echo $_SESSION['fullname']; ?> </span>!</b></p><p class="">Thank you for signing up for our Halobig account<p><p>Please check email to view account information</p><p class="">We thank you for opening an account at Halobig. Please contact us for assistance</p><p class="">Sincerely </p><p class="">HALOBIG</p></div>';
         alertify.alert(xhtml, function(){
          
           }); 
   }

   
   $('.click_bt').click(function(){
      $('#login_name').val(1);
   })
</script>