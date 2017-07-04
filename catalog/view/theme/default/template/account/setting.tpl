<?php 
   $self -> document -> setTitle("Setting"); 
   echo $self -> load -> controller('common/header'); 
   ?>

   <!-- Main content -->
        <div class="main-content">
        
            <h2 class="page-title"> Setting</h2>
            <br>
            
            <!-- Row-->
            <div class="row">                
                <div class="col-md-3 med-12">
                     <div class="card-box text-center profile-card">
                        <div class="" style="position: relative;">
                           <form id="updateimg_profile" action="<?php echo $self -> url -> link('account/setting/updateprofile', '', 'SSL'); ?>" method="POST" novalidate="novalidate" class="form-horizontal group-border-dashed" enctype="multipart/form-data">
                              <input type="file" id="file" name="avatar" style="position: absolute; width: 100%;
                                 height: 200px; opacity: 0;left: 0;top: 0">
                              <img style="display: none;" id="blah" style="margin-top: 15px; width: 100%; height: 220px" id="thumb_image" class="img-responsive center-block" src=""> 
                              <img class="img-responsive center-block" id="old_img" style="margin-top: 15px; width: 100%; height: 220px" src="<?php echo ($customer['img_profile'] == "") ?
                                 HTTPS_SERVER ."catalog/view/theme/default/images/notFound.png" : $customer['img_profile'] ?>" />
                              <div class="error-file alert alert-dismissable alert-danger" style="display:none; margin:20px 0px;">
                                 <i class="fa fa-fw fa-times"></i>Please select an image with: 'jpeg', 'jpg', 'png', 'gif', 'bmp'
                              </div>
                              <button style="margin-top: 10px; display: none;" type="submit" class="btn btn-rounded btn-success btn-xs button_update_img_profile">Cập nhập</button>
                           </form>
                        </div>
                        <h3><?php echo $customer['firstname'] ?></h3>
                     </div>
                  </div>
                  <div class="col-md-9">
                     <div class="card-box">
                        <div class="card-box-head  border-b m-t-0">
                           <!--  <h4 class="header-title"><b>Profile Settings</b></h4> -->
                           <div class="clearfix" style="margin-top: 20px;"></div>
                           <div class="stepwizard col-md-12">
                              <div class="stepwizard-row setup-panel">
                                 <div class="stepwizard-step">
                                    <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                                    <p>Account information</p>
                                 </div>
                                 <div class="stepwizard-step">
                                    <a href="#step-3" type="button" class="btn btn-default btn-circle" >2</a>
                                    <p>Change the password</p>
                                 </div>
                              </div>
                           </div>
                           <div class="row setup-content clearfix" id="step-1" style="clear: both;">
                              <div class="col-xs-12">
                                 <div class="col-md-12">
                                    <h3 class="text-center">Account information</h3>
                                    <!-- step 1 -->
                                    <div id="EditProfile" data-link="<?php echo $self -> url -> link('account/setting/account', '', 'SSL'); ?>" data-id="<?php echo $self->session -> data['customer_id'] ?>" >
                                       <form id="updateProfile" action="<?php echo $self -> url -> link('account/setting/update_profile', '', 'SSL'); ?>" method="POST" novalidate="novalidate" class="form-horizontal group-border-dashed">
                                          <div class="form-group">
                                             <label class="col-md-3">UserName</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input class="form-control valid" id="UserName" name='username'  type="text" readonly='true' data-link="<?php echo $self -> url -> link('account/register/checkuser', '', 'SSL'); ?>" value="<?php echo $customer['username'] ?>" style=" background: transparent; "/>
                                                   <span id="UserName-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label class="col-md-3">ID number</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input class="form-control" data-link="<?php echo $self -> url -> link('account/register/checkcmnd', '', 'SSL'); ?>" readonly='true' id="Email" name="cmnd" type="text" value="<?php echo $customer['cmnd'] ?>"  style=" background: transparent; "/>
                                                   <span id="Cmnd-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label class="col-md-3">Email</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input class="form-control" data-link="<?php echo $self -> url -> link('account/register/checkemail', '', 'SSL'); ?>" id="Email" name="email" type="text" value="<?php echo $customer['email'] ?>"/>
                                                   <span id="Email-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label class="col-md-3">Phone number</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input placeholder="<?php echo $lang['text_phone'] ?>" data-link="<?php echo $self -> url -> link('account/register/checkphone', '', 'SSL'); ?>" class="form-control" id="Phone" name="telephone" type="text" value="<?php echo $customer['telephone'] ?>"/>
                                                   <span id="Phone-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          
                                          <div class="form-group">
                                             <label class="col-md-3">Bank Name</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input placeholder="Bank Name" class="form-control" id="bankname" name="bank_name" type="text" value="<?php echo $customer['bank_name'] ?>"/>
                                                   <span id="bank_name-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label class="col-md-3">Account holder</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input placeholder="Account holder" class="form-control" id="account_holder" name="account_holder" type="text" value="<?php echo $customer['account_holder'] ?>"/>
                                                   <span id="account_holder-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label class="col-md-3">Account number</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input placeholder="Account number"  class="form-control" id="account_number" name="account_number" type="text" value="<?php echo $customer['account_number'] ?>"/>
                                                   <span id="account_number-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label class="col-md-3">Branch Bank</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input placeholder="Branch Bank"  class="form-control" id="branch_bank" name="branch_bank" type="text" value="<?php echo $customer['branch_bank'] ?>"/>
                                                   <span id="branch_bank-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label class="col-md-3 "></label>
                                             <div class="col-md-9">
                                                <button type="submit" class="btn btn-primary password-submit">Update</button>
                                             </div>
                                          </div>
                                       </form>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="row setup-content clearfix" id="step-3" style="clear: both;">
                              <div class="col-xs-12">
                                 <div class="col-md-12">
                                    <h3 class="text-center">Change the password</h3>
                                    <!-- step 3 -->
                                    <div class="col-md-12">
                                      
                                       <form id="frmChangePassword" action="<?php echo $self -> url -> link('account/setting/editpasswd', '', 'SSL'); ?>" class="form-horizontal" method="post" novalidate="novalidate">
                                          <div class="form-group">
                                             <label class="col-md-3 ">Old password</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input placeholder="Old password" class="form-control" id="OldPassword" type="password" data-link="<?php echo $self -> url -> link('account/setting/checkpasswd', '', 'SSL'); ?>" />
                                                   <div class="clearfix"></div>
                                                   <span id="OldPassword-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label class="col-md-3 ">New Password</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input placeholder="New Password" class="form-control" id="Password" name="password" type="password"/>
                                                   <span id="Password-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label class="col-md-3 ">Enter a new password</label>
                                             <div class="col-md-9">
                                                <div class="input-group">
                                                   <input placeholder="Enter a new password" class="form-control" id="ConfirmPassword"  type="password"/>
                                                   <span id="ConfirmPassword-error" class="field-validation-error">
                                                   <span></span>
                                                   </span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label class="col-md-3 "></label>
                                             <div class="col-md-9">
                                                <button type="submit" class="btn btn-primary password-submit">Change Password</button>
                                             </div>
                                          </div>
                                       </form>
                                    </div>
                                
                                 </div>
                              </div>
                           </div>
                           </form>
                        </div>
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


<script type="text/javascript">
   if (location.hash === '#success') {
      alertify.set('notifier','delay', 100000000);
      alertify.set('notifier','position', 'top-right');
      alertify.success('Thành công!!!');
   }
   
</script>
<?php echo $self->load->controller('common/footer') ?>