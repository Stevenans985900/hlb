<?php $self->document->setTitle(" Bonus system "); echo $self->load->controller('common/header'); ?>
<!-- Main content -->
        <div class="main-content">
        
            <h2 class="page-title">Bonus system</h2>
            <br>
            
            <!-- Row-->
            <div class="row">                
                <div class="col-lg-12">
                  <!-- <h3 class="title">Hoa hồng trực tiếp</h3> -->
                  <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                      <thead>
                           <tr>
                              <th class="text-center">#</th>
                                         <th>Type</th>
                                       <th>Date</th>
                                       <th>Amount</th>
                                       <th>Description</th>
                           </tr>
                        </thead>
                      <tbody>
                            <?php if (count($getTransctionHistory_binary_new) > 0) { ?>
                                    <?php $i = 0; foreach ($getTransctionHistory_binary_new as $value) { $i++; ?>
                                  
                                    <tr>
                                       <td data-title="#" align="center">
                                          <?php echo $i ?>
                                       </td>
                                      <td data-title="Type" align="center">
                                          <?php echo $value['wallet'] ?>
                                       </td>
                                       <td data-title="Date" align="center">
                                          <?php echo date('d/m/Y',strtotime($value['date_added'])) ?>
                                       </td>
                                       <td data-title="Amount" align="center">
                                          <?php echo number_format($value['text_amount']) ?> VNĐ
                                       </td>
                                       
                                       <td class="text-center" data-title="Description">
                                         <?php echo $value['system_decsription'] ?>
                                       </td>
                                    </tr>
                                  
                           </div>
                           <?php } ?>
                           <?php } else { ?>
                           <tr>
                           <td colspan="7" align="center">Không có dữ liệu
                           </td>
                           </tr>
                           <?php } ?>
                      </tbody>
                    </table>
                    <?php echo $pagination; ?>
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