<?php 
   $self -> document -> setTitle('Confirm Invoice'); 
   echo $self -> load -> controller('common/header'); 
   ?>
<!-- Main content -->
<div class="main-content">
   <h1 class="page-title">Confirm</h1>
   <!-- Breadcrumb -->
   <div class="row">
      <div class="col-sm-offset-2 col-sm-8">
         <div class="panel panel-default">
            <div class="panel-heading clearfix">
               <h4 class="panel-title">Bill</h4>
            </div>
            <div class="panel-body">
               <div class="table-responsive">
                  <table class="table table-bordered table-hover">
                     <tbody>
                        <tr>
                           <td style="width: 100px;">Trading code</td>
                           <td><?php echo $TermInvest['pd_number'] ?><a href="<?php echo $link ?>">
                              <i class="fa fa-link"></i>
                              </a>
                           </td>
                        </tr>
                        <tr>
                           <td style="width: 100px;">
                             Payment Guide
                           </td>
                            <td>Please transfer to account <strong class="text-info">VPBANK</strong> as: <br>
                              Account number: <strong class="text-info">101630692</strong><br>
                              Account holder: <strong class="text-info">NGUYEN PHAM QUOC</strong><br>
                              (Branch: GIA DINH - if you transfer interbank)<br>
                              Amount of money: <strong class="text-info"><?php echo $key['filled'] ?></strong><br>
                              Content transfer (memo):
                              <strong class="text-info">transaction <?php echo $key['pd_number'] ?> at HLB</strong><br>
                           </td>
                        </tr>
                        <tr>
                           <td></td>
                           <td class="text-success">Note: Please transfer the exact amount (including the extension) and the transfer contents as instructed (in bold). Otherwise we will not process.</td>
                        </tr>
                        <tr>
                           <td>Bank transfer invoice</td>
                           <td>
                           </td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <div class="clearfix"></div>
               <form id="frmIvcf" action="uploadBill" method="POST" novalidate="novalidate" class="form-horizontal" enctype="multipart/form-data">
               
                   <div  class="error-file alert alert-danger alert-dismissible" role="alert" style="display:none;"">
                           <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                           </button>
                            <span class="cf-msg">Please select an image with: 'jpeg', 'jpg', 'png'</span>
                      </div>
                  <div class="form-group">
                     <div class="col-sm-12">
                        <label for="emailaddress">Bill</label>
                        <?php if (($TermInvest['images'] == "")) { ?>
                            <input type="hidden"  name="number"  value="<?php echo $TermInvest['pd_number'] ?>" />
                            <input type="file" id="bill" name="avatar" style="position: absolute; width: 100%;
                               height: 200px; opacity: 0;left: 0;top: 0">
                            <img style="display: none;" id="blah" style="margin-top: 15px; width: 100%; height: 250px" id="thumb_image" class="img-responsive center-block" src=""> 
                        <?php   } ?>
                        <img class="img-responsive center-block" id="old_img" style="margin-top: 15px; width: 100%; height: 250px" src="<?php echo ($TermInvest['images'] == "") ?
                           HTTPS_SERVER ."catalog/view/theme/default/images/hoadon.jpg" : $TermInvest['images'] ?>" />
                      
                       
                     </div>
                  </div>
                  <?php if (($TermInvest['images'] == "")) {?>
                    <div class="form-group">
                       <div class="col-sm-12"> 
                          <button id="submit" class="btn btn-primary" type="submit">Ok</button> 
                       </div>
                    </div>
                  <?php   } ?>
               </form>
            </div>
         </div>
      </div>
      <div class="col-sm-5">
      </div>
   </div>
   <!-- Footer -->
   <footer class="footer-main"> 
      &copy; 2017 <strong>Halobig</strong>         
   </footer>
   <!-- /footer -->
</div>
<!-- /main content -->
</div>
<!-- /main container -->
<?php echo $self->load->controller('common/footer') ?>