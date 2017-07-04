<?php $self->document->setTitle(" Refferal "); echo $self->load->controller('common/header'); ?>
<!-- Main content -->
        <div class="main-content">
        
            <h2 class="page-title">Refferal F1</h2>
            <br>
            
            <!-- Row-->
            <div class="row">                
                <div class="col-lg-12">
                  <!-- <h3 class="title">Trực tiếp F1</h3> -->
                  <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                      <thead>
                           <tr>
                              <th class="text-center">#</th>
                              <th>Username</th>
                              <th>Phone number</th>
                              <th>Email</th>
                              <th>Date Create</th>
                           </tr>
                        </thead>
                      <tbody>
                          <?php if (count($refferals) > 0) { ?>
                           <?php $count = 1; foreach ($refferals as $key => $value) { ?>
                        <tr>
                    
                              <td data-title="No." align="center"><?php echo $count ?></td>
                              <td data-title="Username"><?php echo $value['username'] ?></td>
                              
                              <td data-title="Phone" >
                                 <?php echo $value['telephone']; ?>
                              </td>
                              <td data-title="Email"><?php echo $value['email'] ?></td>
                              
                             <td data-title="Date Create"><?php echo date("d/m/Y H:i A", strtotime($value['date_added'])); ?></td> 
                           </tr>

                           <?php $count++; } ?>
                           <?php } else { ?>
                            <tr>
                              <td colspan="5"> No Data</td>
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