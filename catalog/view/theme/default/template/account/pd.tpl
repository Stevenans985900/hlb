<?php $self->document->setTitle(" Investment "); echo $self->load->controller('common/header'); ?>
<!-- Main content -->
        <div class="main-content">
        
            <h2 class="page-title">Investment</h2>
            <br>
            
            <!-- Row-->
            <div class="row">
            
              
                
                <div class="col-lg-12">
                  <!-- <h3 class="title">Custom Table</h3> -->
                  <div class="table-responsive">
                    <table class="table table-bordered table-hover text-center">
                     <thead>
                                     <tr >
                                        <th class="text-center">#</th>
                                        <th class="text-center">Trading code</th>
                                        <th class="text-center">Date</th>
                                        <th class="text-center">Package Invest</th>
                                      <th class="text-center">Status</th>
                                   
                                     </tr>
                                  </thead>
                      <tbody>
                         <?php $i=0; foreach ($pds as $value=> $key){ $i++?> 
                        <tr>
                       
                          <td class="size-60 text-center"><?php echo $i ?></td>
                          
                          <td><strong>#<?php echo $key['pd_number'] ?></strong></td>
                          <td><?php echo date("d/m/Y", strtotime($key['date_added'])); ?></td>
                          <td><?php echo (number_format($key['filled'])) ?> VNĐ</td>
                         <td class="bs-example">
                        <?php if ($key['status'] == 0 && $key['images'] == '') {
                          echo '<button class="btn btn-danger btn-outline" type="button"><a href="#">Unpaid 
                              <i class="fa fa-link"></i>
                              </a></button>';
                        } elseif  ($key['status'] == 0 && $key['images'] != '') {
                          echo '<button class="btn btn-primary btn-outline" type="button">Processing</button>';
                        }elseif ($key['status'] == 1 && $key['images'] != ''){
                            echo '<button class="btn btn-success btn-outline" type="button">Active</button>';
                        }

                          ?>
                        
                      </td>
                        
                         
                        </tr>
                         
                         <?php }?> 
                      </tbody>
                    </table>
                  </div>
                </div>
            </div>
            <!-- /row-->
            
            <!-- Row -->
            <div class="row" >
               <?php  foreach ($pds as $value=> $key){?> 
            <div class="col-sm-offset-2 col-sm-8">
         <div class="panel panel-default">
            <div class="panel-heading clearfix">
               <h4 class="panel-title">Bill</h4>
            </div>
            <div class="panel-body">
               <div class="table-responsive">
               <?php if (($key['images'] == "")) { ?>
                  <table class="table table-bordered table-hover">
                     <tbody>
                        <tr>
                           <td style="width: 100px;">Trading code</td>
                           <td><?php echo $key['pd_number'] ?><a href="<?php echo $link ?>">
                              <i class="fa fa-link"></i>
                              </a>
                           </td>
                        </tr>
                        <tr>
                           <td style="width: 100px;">
                              Payment Guide
                           </td>
                           <td>Please transfer to account <strong class="text-info">Vietcombank</strong> as: <br>
                              Account number: <strong class="text-info">0181001858744</strong><br>
                              Account holder: <strong class="text-info">HUYNH THI VAN ANH</strong><br>
                              (Branch: Ho Chi Minh - if you transfer interbank)<br>
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
                  <?php } ?>
               </div>
               <div class="clearfix"></div>
               <form id="frmIvcf" action="uploadBillPD" method="POST" novalidate="novalidate" class="form-horizontal" enctype="multipart/form-data">
               
                   <div  class="error-file alert alert-danger alert-dismissible" role="alert" style="display:none;"">
                           <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                           </button>
                            <span class="cf-msg">Please select an image with: 'jpeg', 'jpg', 'png'</span>
                      </div>
                  <div class="form-group">
                     <div class="col-sm-12">
                        <label for="emailaddress">Bill</label>
                        <?php if (($key['images'] == "")) { ?>
                            <input type="hidden"  name="number"  value="<?php echo $key['pd_number'] ?>" />
                            <input type="file" id="bill" name="avatar" style="position: absolute; width: 100%;
                               height: 200px; opacity: 0;left: 0;top: 0">
                            <img style="display: none;" id="blah" style="margin-top: 15px; width: 100%; height: 250px" id="thumb_image" class="img-responsive center-block" src=""> 
                        <?php   } ?>
                        <img class="img-responsive center-block" id="old_img" style="margin-top: 15px; width: 100%; height: 250px" src="<?php echo ($key['images'] == "") ?
                           HTTPS_SERVER ."catalog/view/theme/default/images/hoadon.jpg" : $key['images'] ?>" />
                      
                       
                     </div>
                  </div>
                  <?php if (($key['images'] == "")) {?>
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
        
        <?php } ?>
       
        

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



<script type="text/javascript">
    if (location.hash === '#success') {
        alertify.set('notifier', 'delay', 100000000);
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('Create user successfull !!!');
    }
</script>

<?php echo $self->load->controller('common/footer') ?>