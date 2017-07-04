<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
<div class="page-header">
  <div class="container-fluid">
    <!-- <h1>Provide Donation</h1> -->

  </div>
</div>
<div class="container-fluid">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title pull-left">Đầu tư kỳ hạn</h3>
     <!--  <div class="pull-right">
           <button type="button" id="Statistical" title="Statistical" class="btn btn-primary" data-link="<?php echo $self->url->link('pd/terminvest/statistical', 'token='.$token.'', 'SSL'); ?> ">Statistical</i></button>
      </div> -->
      <div class="clearfix">
          
      </div>
    </div>
    <div class="panel-body">
    <div class="table-responsive">
                  <table class="table table-bordered table-hover">
                     <tbody>
                        <tr>
                           <td style="width: 100px;">Mã giao dịch</td>
                           <td><?php echo $TermInvest['pd_number'] ?><a href="<?php echo $link ?>">
                              <i class="fa fa-link"></i>
                              </a>
                           </td>
                        </tr>
                        <tr>
                           <td style="width: 100px;">
                              Thông tin chuyển khoản
                           </td>
                           <td>
                              Số tài khoản: <strong class="text-info">0181001858744</strong><br>
                              Tên chủ tài khoản: <strong class="text-info">HUYNH THI VAN ANH</strong><br>
                              Số tiền: <strong class="text-info"><?php echo number_format($TermInvest['filled']) ?> VNĐ</strong><br>
                              Nội dung chuyển khoản (memo):
                              <strong class="text-info">giao dich <?php echo $TermInvest['pd_number'] ?> tai HLB</strong><br>
                           </td>
                        </tr>
                     </tbody>
                  </table>
               </div>
       <form id="frmIvcf" action="<?php echo 'index.php?route=pd/terminvest/showinvoice&transactionId='.$TermInvest['pd_number'].'&token='.$token.''?>" method="POST" novalidate="novalidate" class="form-horizontal" enctype="multipart/form-data">
                  
                  <div class="form-group">
                     <div class="col-sm-12">
                        <label for="emailaddress">Trạng thái</label>
                        <select id="amountInvest" name="status" class="form-control">
                          <option value="no">Chờ xủ lý</option> 
                          <option value="ok">Xác nhận đã thanh toán</option>
                         
            
                        </select>
                     </div>
                  </div>
                   <div class="form-group">
                     <div class="col-sm-12">
                        <button id="submit" class="btn btn-primary" type="submit">Đồng ý</button> 
                     </div>
                  </div>
                  <div class="form-group">
                     <div class="col-sm-12">
                        <label for="emailaddress">Hóa đơn</label>
                        <img class="img-responsive center-block" id="old_img" style="margin-top: 15px; width: 100%; height: 100%" src="<?php echo ($TermInvest['images'] == "") ?
                           HTTPS_SERVER ."catalog/view/theme/default/images/hoadon.jpg" : $TermInvest['images'] ?>" />
                     </div>
                  </div>
                  <?php if (($TermInvest['images'] == "")) {?>
                    <div class="form-group">
                       <div class="col-sm-12"> 
                          <button id="submit" class="btn btn-primary" type="submit">Đồng ý</button> 
                       </div>
                    </div>
                  <?php   } ?>
               </form>
     	
    </div>
  </div>
</div>

<?php echo $footer; ?>