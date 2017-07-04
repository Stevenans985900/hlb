<?php $self->document->setTitle(" Dashboard"); echo $self->load->controller('common/header'); ?>
<!-- Main content -->


        <div class="main-content">
        
            <h2 class="page-title">Dashboard</h2>
            <br>
            
            <div class="row">
               <!--  <span class="text-center text-danger countdown" data-title="Thời gian hết hạn" data-countdown="<?php echo $date_end_in_ml['date_end'] ?>" > Đang tải...</span> -->
            </div>
            <!-- Row-->
            <div class="row">
            
                <!-- Online Signup -->
                <div class="col-lg-3 col-sm-6">
                    <div class="panel minimal secondary-bg">
                        <div class="panel-body">
                            <h2 class="no-margins"><strong><?php echo number_format($getTotalPD['number']) ?> VND</strong></h2>
                           
                            <div class="float-chart-sm pt-15">
                                <h2>Package Invest</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Online Signup -->
                
                <!-- Last Month Sale -->
                <div class="col-lg-3 col-sm-6">
                    <div class="panel minimal royalblue-bg">
                        <div class="panel-body">
                            <h2 class="no-margins"><strong><?php echo number_format($m_wallet['amount']) ?> VND</strong></h2>
                          
                          
                            <div class="float-chart-sm pt-15">
                                <h2>Refferal Bonus</h2>
                            </div>
                          </div>
                    </div>
                </div>
                <!-- /last month sale -->
                
                
                
                <!-- Total Revenu -->
                <div class="col-lg-3 col-sm-6">
                    <div class="panel minimal info-bg">
                        <div class="panel-body">
                            <h2 class="no-margins"><strong><?php echo number_format($cannhanh) ?> VND</strong></h2>
                          
                            <div class="float-chart-sm pt-15">
                                <h2>Bonus Connect</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /total revenu -->
                <div class="col-lg-3 col-sm-6">
                    <div class="panel minimal teal-bg">
                        <div class="panel-body">
                            <h2 class="no-margins pull-left"><?php echo number_format($total_binary_left) ?> Left</h2>
                            <h2 class="no-margins pull-right"><?php echo number_format($total_binary_right) ?> Right</h2>
                            <div class="clearfix"></div>
                            <div class="float-chart-sm pt-15">
                                <h2>Total Membership</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /row-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading clearfix">
                            <h4 class="panel-title">Overview of HALOBIG</h4>
                            <ul class="panel-tool-options"> 
                                <li><a data-rel="collapse" href="#"><i class="icon-down-open"></i></a></li>
                                <li><a data-rel="reload" href="#"><i class="icon-arrows-ccw"></i></a></li>
                                <li><a data-rel="close" href="#"><i class="icon-cancel"></i></a></li>
                            </ul>
                        </div>
                        <div class="panel-body">
                        <ol> 
                                <li>HALOBIG Trade and Service Investment Joint Stock Company operated by Nguyen Pham Quoc</li> 
                                <li>Chartered capital =  21,600,000,000 VND</li> 
                                <li>Face value of shares: 10,000 VND</li> 
                                <li>Total number of shares: 2.160.000 shares</li> 
                                <li>32 - 64 GDCN nationwide</li> 
                                <li>Business sector:
                                <ul> 
                                        <li>Invest in selective projects (there are 10 projects to choose from).</li> 
                                        <li>Directly dealing in super-profitable and secure projects such as:
                                        <ul> 
                                        <li>Clean rice, after 10 years of turnover = 329 billion - 6580 billion.</li> 
                                        <li>Clean pig, after = 10 years of turnover = 9690 billion. After 10 years the value of HALOBIG shares increased over 300 times.</li> 
                                        
                                    </ul> 

                                        </li> 
                                        <li>Inside closed business on the network of consumers (shareholders). For example: 3 million shareholders, just spend 3 million VND / month / person = 9000 billion / month = 108,000 billion / year = 1.080.000 billion / 10Nay (at this time the share value will be extremely large).</li> 
                                
                                    </ul> 

                                </li> 
                                <li>Office: 6th Floor 19-19 / 2A Ho Van Hue Street, Ward 09, Phu Nhuan District, Ho Chi Minh City, Vietnam
                                <ul>
                                    <li>Office of the General Director: 6th Floor.</li>
                                    <li>Office of the director - Department + Accounting, Prime + VIP room: 6th floor.</li>
                                    <li>Conference Hall and Rooms: 4th Floor</li>
                                </ul>
                                </li> 
                                
                            </ol>
                          
                        </div>
                    </div>
                </div>
            </div>
            <!-- Row -->
          <!--   <div class="row">
            
                <div class="col-lg-7">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3>Chi tiết đăng nhập</h3>
                            <?php if (count($get_customer_activity) > 0) {
                          
                             ?>
                            <div class="table-responsive">
                                <table class="table">
                                <thead>
                                    <tr>
                                        <th>Browser </th>
                                        <th>Last Login Date </th>
                                        <th>IP Address  </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($get_customer_activity as $value) { ?>
                                  
                                    <tr>
                                        <td><?php echo $value['browser'] ?></td>
                                        <td><?php echo date('d/m/Y H:i:s', strtotime($value['date_added'])) ?> </td>
                                        <td><?php echo $value['ip'] ?> </td>
                                    </tr>
                                  <?php
                                      
                                    } ?>
                                    
                                </tbody>
                            </table>
</div>
                           
                            <?php
                              
                            } ?>
                        </div>
                    </div>
                </div>
              
                <div class="col-lg-5">
                
                   
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="media"> 
                               
                                <div class="media-body"> 
                                    <h4 class="media-heading">Your Affilate Link</h4>
                                    <p class="text-warning"><?php echo HTTPS_SERVER.'register?ref='.$customer_code; ?></p>
                                   
                </h4>
                               
                                    <a href="<?php echo HTTPS_SERVER.'register?ref='.$customer_code; ?>" class="btn btn-sm btn-primary" target="_blank">Open</a> 
                                </div> 
                            </div>
                        </div>
                    </div>
                
                
                </div>
         
            </div> -->
            <!-- /row-->
            
         
            
           
         
            
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