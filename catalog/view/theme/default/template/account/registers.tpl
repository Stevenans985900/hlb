<!DOCTYPE html>
<html lang="en">

<head>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Mackayshieldslife.">
<meta name="author" content="Mackayshieldslife">


<title>Register - HALOBIG </title>

<!-- FAVICON -->
<link rel="icon" href="catalog/view/theme/default/images/logo_icon.png">

<link href="favicon.png" rel="shortcut icon">
<link href="apple-touch-icon.png" rel="apple-touch-icon">
<link href="catalog/view/theme/default/assets/bower_components/select2/dist/css/select2.min.css" rel="stylesheet">

<link href="catalog/view/theme/default/assets/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
<link href="catalog/view/theme/default/assets/bower_components/dropzone/dist/dropzone.css" rel="stylesheet">
<link href="catalog/view/theme/default/assets/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="catalog/view/theme/default/assets/bower_components/datatables/media/css/dataTables.bootstrap4.min.css" rel="stylesheet">
<link href="catalog/view/theme/default/assets/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
<link href="catalog/view/theme/default/assets/css/main.css" rel="stylesheet">


<link href="catalog/view/theme/default/css/customer.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>

<script src="catalog/view/javascript/register/register.js" type="text/javascript"></script>
<script src="catalog/view/theme/default/assets/js/modernizr.min.js"></script>

</head>

<body>
   <div class="all-wrapper with-pattern register_account">
         <div class="auth-box-w wider">
            <div class="logo-w"><a href="index.html"> <a href="#" ><img style="margin-bottom: 20px;width: 240px" src="catalog/view/theme/default/images/logo.png" class="img-responsive center-block" alt=""/></a></a></div>
            <h4 class="auth-header">Create Account</h4>
            <?php if(!$p_binary) { ?>
            <form id="register-account" action="<?php echo $self -> url -> link('account/register', '', 'SSL'); ?>" class="form-horizontal" method="post" novalidate="novalidate">
               <?php  } else { ?>
            
            <form id="register-account" action="<?php echo $self -> url -> link('account/personal/register_submit', '', 'SSL'); ?>" class="form-horizontal" method="post" novalidate="novalidate" style="margin-bottom: 70px;" >
               <?php }?>
               <?php if($p_binary) { ?>
               <input type="hidden" name="p_binary" value="<?php echo $p_binary ?>"/>
               <input type="hidden" name="postion" value="<?php echo $postion ?>">
               <?php } ?>
               <?php 
            $token = explode("_", $self -> request -> get['id']);
            if(intval($self -> checkBinaryLeft($token[0], $token[1])) === 1) { ?>
           <div class="col-md-6" style="float: left;">
            <div class="form-group">
               <div class="textbox-login">
                  <label>Username</label>
                  <input type="hidden" name="node" value="<?php echo $token['2']; ?>">
                  <input class="form-control" placeholder="Username" name="username" id="username" value="" data-link="<?php echo $actionCheckUser; ?>">
               </div>
            </div>

            <div class="form-group">
                  <div class="textbox-login">
                  <label>Email</label>
                  <input class="form-control" placeholder="Email" name="email" id="email" data-link="<?php echo $actionCheckEmail; ?>">
                  
               </div>
            </div>

            <div class="form-group">
                  <div class="textbox-login">
                  <label>Phone number</label>
                  <input class="form-control" placeholder="Phone number" name="telephone" id="phone" data-link="<?php echo $actionCheckPhone; ?>">
                  
               </div>
            </div>
            <div class="form-group">
                  <div class="textbox-login">
                  <label>Citizenship Card/Passport No</label>
                  <input class="form-control" placeholder="Citizenship Card/Passport No" name="cmnd" id="cmnd" data-link="<?php echo $actionCheckCmnd; ?>">
                  
               </div>
            </div>
            <div class="form-group">
                  <div class="textbox-login">
                  <label>Password</label>
                  <input class="form-control" placeholder="Password" id="password" name="password" type="password">
                 
               </div>
            </div>
            <div class="form-group">
                  <div class="textbox-login">
                     <label>Sponsor</label>
                     <input class="form-control" placeholder="Sponsor" name="sponser" id="" readonly value="<?php echo $customercode['username'];?>">
                     
                  </div>
                  
            </div>

            
         </div>
         <div  class="col-md-6" style="float: left;">
            <div class="form-group">
                  <div class="textbox-login">
                  <label>Bank</label>
                  <select class="form-control" name="bank_name" id="bank_name">
                     <option value="Vietcombank">Vietcombank</option>
                     <option value="Agribank">Agribank</option>
                  </select>
                  
               </div>
            </div>

            <div class="form-group">
                  <div class="textbox-login">
                  <label>Account holder</label>
                  <input class="form-control" placeholder="Account holder" name="account_hodder" id="account_hodder" >
               </div>
            </div>

            <div class="form-group">
                  <div class="textbox-login">
                  <label>Account number</label>
                  <input class="form-control" placeholder="Account number" name="account_number" id="account_number" >
               </div>
            </div>

            <div class="form-group">
                  <div class="textbox-login">
                  <label>Branch</label>
                  <input class="form-control" placeholder="Branch" name="brank" id="brank" >
               </div>
            </div>

            <div class="form-group">
                  <div class="textbox-login">
                     <label>Position</label>
                     <input class="form-control" placeholder="Position" name="position" id="" value="<?php echo ($token['1'] == "left") ? "Left" : "Right" ?>" readonly>
                  </div>
                  
            </div>
            <?php 

            $package = 0;
            if ($customercode['ml_status'] = 1) {
               $package = 1000000;
            }
            switch (intval($customercode['ml_status'])) {
               case 1:
                  $package = 1000000;
                  break;

               case 2:
                  $package = 3000000;
                  break;

               case 3:
                  $package = 5000000;
                  break;
               case 4:
                  $package = 10000000;
                  break;
               
               default:
                $package = 0;
                  break;
            }
             ?>
             <div class="form-group">
                  <div class="textbox-login">
                     <label>Package</label>
                     <input class="form-control" placeholder="Package" name="packages" id="" value="<?php echo number_format($package) ?> VND" readonly>
                  </div>
                  
            </div>
            <input type="hidden" name="token_crt" value="<?php echo $token_crt; ?>">
         </div>
            <div class="clearfix"></div>   
            
            <div class="bottom-login text-center" style="margin-top: 30px;">
              <button style="margin: 0 auto" type="submit" class="btn btn-info mobile-btn-login btn-sign waves-effect waves-dark">Submit</button>
            </div>
            
            </div>
                  


            </form>
            <?php } else { ?>
         <div class="alert alert-danger text-center" style="margin-top:10px;">
            
            <strong>Error!</strong>  This branch was there! Please select a branch !!

            <button onclick="goBack()" type="button" style="margin-top: 40px; width: 100%; float: left;" class="close" data-dismiss="alert" aria-hidden="true"><i class="fa fa-angle-double-left" aria-hidden="true"></i>  Back</button>
         </div>
         <?php } ?>
         <div class="clearfix"></div>

         </div>
      </div>


<?php echo $footer; ?>

<script type="text/javascript">
   if (location.hash === '#success') {
      alertify.set('notifier','delay', 100000000);
      alertify.set('notifier','position', 'top-right');
      alertify.success('Create user successfull !!!');
   }
   
</script>
