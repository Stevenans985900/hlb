<?php $self->document->setTitle(" Invest in safe terms "); echo $self->load->controller('common/header'); ?>
<!-- Main content -->
<div class="main-content">
   <h2 class="page-title">Invest in safe terms</h2>
   <br>
   <div class="row">
     <div class="table-responsive">
            <table class="table  table-bordered table-hover text-center">
               <thead>
                  <tr>
                     <th class="text-center" style="width: 130px;">Trading code</th>
                     <th class="text-center ">Amount</th>
                     <th class="text-center">Date created</th>
                     <th class="text-center">Period</th>
                      <th class="text-center size-80" >Status</th>
                  </tr>
               </thead>
               <tbody >
               <?php if ($TermInvestment) {
                  foreach ($TermInvestment as $value) {?>
                    <tr >
                     <td><strong><?php echo $value['pd_number']; ?></strong><a href="<?php echo HTTPS_SERVER . 'invoice&transactionId='.$value['pd_number'] ?>">
                              <i class="fa fa-link"></i>
                              </a></td>
                     <td><?php echo number_format($value['filled']); ?> VNĐ</td>
                     <td><?php echo date("d/m/Y", strtotime($value['date_added'])); ?></td>
                     <td><?php echo number_format($value['term']); ?> months</td>
                      <td class="bs-example">
                        <?php if ($value['status'] == 0 && $value['images'] == '') {
                          echo '<button class="btn btn-danger btn-outline" type="button"><a href="'.HTTPS_SERVER . 'invoice&transactionId='.$value['pd_number'].'">Unpaid
                              <i class="fa fa-link"></i>
                              </a></button>';
                        } elseif  ($value['status'] == 0 && $value['images'] != '') {
                          echo '<button class="btn btn-primary btn-outline" type="button">Processing</button>';
                        }elseif ($value['status'] == 1 && $value['images'] != ''){
                            echo '<button class="btn btn-success btn-outline" type="button">Active</button>';
                        }

                          ?>
                        
                      </td>
                  </tr>
               <?php   }
               } ?>
                 
                 
               </tbody>
            </table>
         
         </div>
   </div>
   <div class="row">
      <div class="col-sm-offset-2 col-sm-8">
         <div class="panel panel-default">
            <div class="panel-heading clearfix">
               <h4 class="panel-title">New investments</h4>
              
            </div>
            <div class="panel-body">
               <form id="frmIv" class="form-horizontal" >
               <div id="msg-error" class="alert alert-danger alert-dismissible" role="alert" style="display: none;">
                     <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">×</span>
                     </button>
                      <span class="cf-msg"></span>
                </div>
                <div id="msg-success" class="alert alert-success" role="alert" style="display: none;"><span class="cf-msg-success"></span></div>
                  <div class="form-group">
                     <label class="col-sm-2 control-label" for="inputEmail3">Investment package</label> 
                     <div class="col-sm-10">
                        <select id="amountInvest" name="amount" class="form-control">
                          <option value="#">-- Select the investment package --</option>
                          <option value="10000000">10,000,000 VNĐ</option> 
                          <option value="50000000">50,000,000 VNĐ</option>
                          <option value="300000000">300,000,000 VNĐ</option> 
                          <option value="500000000">500,000,000 VNĐ</option> 
                          <option value="other">Khác</option> 
                        </select>
                       
                     </div>
                  </div>
                  <div class="form-group" id="inputAmount" style="display: none;"> 
                      <label class="col-sm-2 control-label" for="inputamount">Amount</label> 
                      <div class="col-sm-10"> 
                        <input type="text" id="ValAmount" name="inputamount" placeholder="Amount > 500,000,000 VND" class="form-control">
                      
                       </div> 
                    </div>
                  <div class="form-group">
                     <label class="col-sm-2 control-label" for="inputEmail3">Period</label> 
                     <div class="col-sm-10">
                        <select class="form-control" id="Term"> 
                        <option value="#">-- Select term --</option>
                          <option value="24">24 months</option> 
                          <option value="60">60 months</option>
                          <option value="120">120 months</option> 
                        </select>
                       
                     </div>
                  </div>
                  <div class="form-group">
                     <div class="col-sm-offset-2 col-sm-10"> 
                        <button id="submit" class="btn btn-primary" type="submit">Ok</button> 
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
     
   </div>
   <!-- Row-->
   <div class="row">
      <div class="col-lg-12">
         <h3 class="title">Detailed investment packages</h3>
         <div class="table-responsive">
            <table class="table  table-bordered table-hover text-center">
               <thead>
                  <tr>
                     <th class="text-center">Category</th>
                     <th class="text-center">Amount</th>
                     <th class="text-center">Term of 24 months<br>(2-3%/months)</th>
                     <th class="text-center">Term of 60 months<br>(4-6%/months)</th>
                     <th class="text-center">Term of 120 months<br>(7%/months)</th>
                  </tr>
               </thead>
               <tbody >
                  <tr >
                     <td><strong>Plan 1</strong></td>
                     <td>10 million</td>
                     <td>0.2 million/months</td>
                     <td>0.5 million/months</td>
                     <td>0.7 million/months</td>
                  </tr>
                  <tr>
                     <td><strong>Plan 2</strong></td>
                     <td>50 million</td>
                     <td>1.5 million/months</td>
                     <td>2.5 million/months</td>
                     <td>3.5 million/months</td>
                  </tr>
                  <tr>
                     <td><strong>Plan 3</strong></td>
                     <td>300 million</td>
                     <td>9 million/months</td>
                     <td>15 million/months</td>
                     <td>21 million/months</td>
                  </tr>
                  <tr>
                     <td><strong>Plan 4</strong></td>
                     <td>500 million</td>
                     <td>15 million/months</td>
                     <td>25 million/months</td>
                     <td>35 million/months</td>
                  </tr>
                  <tr>
                     <td><strong>Plan 5</strong></td>
                     <td>> 500 million</td>
                     <td>2-3%</td>
                     <td>4-6%</td>
                     <td>7%/months</td>
                  </tr>
               </tbody>
            </table>
            <div class="alert alert-success" role="alert"><strong>Note:</strong> Introduce investors, get 10% bonus (5% = cash, 5% = stock). </div>
         </div>
      </div>
   </div>
   <!-- /row-->
   <!-- Row -->
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