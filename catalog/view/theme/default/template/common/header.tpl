<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from www.g-axon.com/integral-3.0/dark/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 06 Jun 2017 13:23:10 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="keywords" content="">
<title><?php echo $title; ?> </title>
<!-- Site favicon -->
<link rel='shortcut icon' type='image/x-icon' href='catalog/view/theme/default/halobig/images/favicon.ico' />
<!-- /site favicon -->
<!--Load JQuery-->

 <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
      
      <script src="catalog/view/javascript/bootstrap.min.js"></script>
      <script src="catalog/view/javascript/jquery/underscorejs/underscorejs.js" type="text/javascript"></script>
       <script src="catalog/view/javascript/jquery/jquery.easyui.min.js" type="text/javascript"></script> 
       <!-- <script src="catalog/view/javascript/jquery/jquery-ui.js" type="text/javascript"></script> -->
<script src="catalog/view/theme/default/halobig/plugins/metismenu/js/jquery.metisMenu.js"></script>
<!-- <script src="catalog/view/theme/default/halobig/plugins/blockui-master/js/jquery-ui.js"></script> -->
<script src="catalog/view/theme/default/halobig/plugins/blockui-master/js/jquery.blockUI.js"></script>
<!-- Entypo font stylesheet -->
<link href="catalog/view/theme/default/halobig/css/entypo.css" rel="stylesheet">
<!-- /entypo font stylesheet -->

<!-- Font awesome stylesheet -->
<link href="catalog/view/theme/default/halobig/css/font-awesome.min.css" rel="stylesheet">
<!-- /font awesome stylesheet -->

<!-- Bootstrap stylesheet min version -->
<link href="catalog/view/theme/default/halobig/css/bootstrap.min.css" rel="stylesheet">
<!-- /bootstrap stylesheet min version -->

<!-- Integral core stylesheet -->
<link href="catalog/view/theme/default/halobig/css/integral-core.css" rel="stylesheet">
<!-- /integral core stylesheet -->

<!--Jvector Map-->
<link href="catalog/view/theme/default/halobig/plugins/jvectormap/css/jquery-jvectormap-2.0.3.css" rel="stylesheet">

<link href="catalog/view/theme/default/halobig/css/integral-forms.css" rel="stylesheet">
<link href="catalog/view/theme/default/halobig/css/custom.css" rel="stylesheet">
<link href="catalog/view/theme/default/css/customer.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
<![endif]-->

<!--[if lte IE 8]>
   <script src="plugins/flot/js/excanvas.min.js"></script>
<![endif]-->
<!--Loader Js-->
<script src="catalog/view/theme/default/halobig/js/loader.js"></script>
<script src="catalog/view/javascript/jquery.form.min.js" type="text/javascript"></script>

<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
  <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>

<script src="catalog/view/javascript/alertifyjs/alertify.js" type="text/javascript"></script>
<link href="catalog/view/theme/default/css/al_css/alertify.css" rel="stylesheet">
<script src="catalog/view/javascript/loading.js" type="text/javascript"></script>
 <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/fakeloader.css" />
<script type="text/javascript">  window.funLazyLoad={start:function(){$("#fakeloader").fakeLoader({timeToHide:99999999999,zIndex:"999",spinner:"spinne1",bgColor:"rgba(0,0,0,0.8)"})},reset:function(){$("#fakeloader").hide()},show:function(){$("#fakeloader").show()}};
        (jQuery)
             
      </script>

</head>
<body>
<div id="fakeloader"></div>
<!-- Loader Backdrop -->
   <div class="loader-backdrop">           
     <!-- Loader -->
      <div class="loader">
         <div class="bounce-1"></div>
         <div class="bounce-2"></div>
      </div>
     <!-- /loader -->
   </div>
<!-- loader backgrop -->
   
<!-- Page container -->
<div class="page-container">

   <!-- Page Sidebar -->
   <div class="page-sidebar">
   
      <!-- Site header  -->
      <header class="site-header">
        <div class="site-logo"><a href="home.html"><img src="catalog/view/theme/default/halobig/images/logo.png" alt="Integral" title="Integral"></a></div>
        <div class="sidebar-collapse hidden-xs"><a class="sidebar-collapse-icon" href="#"><i class="icon-menu"></i></a></div>
        <div class="sidebar-mobile-menu visible-xs"><a data-target="#side-nav" data-toggle="collapse" class="mobile-menu-icon" href="#"><i class="icon-menu"></i></a></div>
      </header>
      <!-- /site header -->
      
      <!-- Main navigation -->
      <ul id="side-nav" class="main-menu navbar-collapse collapse">
         <li><a href="home.html"><i class="icon-gauge"></i><span class="title">Dashboard</span></a></li>
         <li ><a href="investing.html"><i class="icon-direction"></i><span class="title">Investment</span></a></li>
         <li ><a href="term-investment.html"><i class="icon-doc-text"></i><span class="title">Term Investment</span></a></li>
     
         <li ><a href="refferal.html"><i class="icon-window"></i><span class="title">Refferal</span></a></li>
         <li ><a href="genealogy.html"><i class="icon-flow-tree"></i><span class="title">Tree System</span></a></li>
         <li class="has-sub"><a href="#"><i class="icon-list"></i><span class="title">Transaction History
</span></a>
            <ul class="nav collapse">
               <li><a href="direct-profit.html"><span class="title">Referral Bonus </span></a></li>
               <li><a href="network-profit.html"><span class="title">Bonus Connect</span></a></li>
            </ul>
         </li>
         <li ><a href="your-profile.html"><i class="icon-user"></i><span class="title">Setting</span></a></li>
         <li ><a href="logout.html"><i class="icon-logout"></i><span class="title">Logout</span></a></li>
      </ul>
      <!-- /main navigation -->     
  </div>
  <!-- /page sidebar -->
  
  <!-- Main container -->
  <div class="main-container">
  
      <!-- Main header -->
      <div class="main-header row">
        <div class="col-sm-6 col-xs-7">
        
         <!-- User info -->
         <ul class="user-info pull-left">          
           <li class="profile-info dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false"> 
  <?php if ($img_profile ) {
                        echo  '<img width="44" class="img-circle avatar" alt="" src="'.$img_profile.'">'; 
                        }else{
                          echo '<img width="44" class="img-circle avatar" alt="" src="catalog/view/theme/default/images/notFound.png">'; 
                          } ?>
           <?php echo $username; ?> <span class="caret"></span></a>
           
            <!-- User action menu -->
            <ul class="dropdown-menu">
              
              <li><a href="#/"><i class="icon-user"></i>Account</a></li>
    
              <li><a href="#"><i class="icon-logout"></i>Logout</a></li>
            </ul>
            <!-- /user action menu -->
           </li>
           <li>
                              <div id="google_translate_element" style=""></div>
                              </li>
         </ul>



<!-- <script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'th,km,en,vi,ru', layout: google.translate.TranslateElement.InlineLayout.SIMPLE,autoDisplay: false}, 'google_translate_element');
}
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script> -->
<script type="text/javascript">
function googleTranslateElementInit() {
   new google.translate.TranslateElement({pageLanguage: 'en' }, 'google_translate_element');
}
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
  <style type="text/css">
      #google_translate_element select{
           border: 1px solid #5dab40;
    padding: 10px;
    border-radius: 5px;
    background: #47bc3e;
    color: #fff;
      }
      a.goog-logo-link {
    display: none;
}
.goog-te-banner-frame.skiptranslate {
    display: none !important;
    } 
       .goog-te-gadget {

    color: transparent;
}
body {
    top: 0px !important; 
    }    #goog-gt-tt {
    display: none !important;
}

      </style>

           
       
         <!-- /user info -->
        </div>
        

      </div>
      <!-- /main header -->