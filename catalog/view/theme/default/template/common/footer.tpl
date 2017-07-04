</div>
<!-- /page container -->



<!--Knob Charts-->
<!-- <script src="catalog/view/theme/default/halobig/plugins/knob/js/jquery.knob.min.js"></script> -->

<!--Jvector Map-->
<!-- <script src="catalog/view/theme/default/halobig/plugins/jvectormap/js/jquery-jvectormap-2.0.3.min.js"></script>
<script src="catalog/view/theme/default/halobig/plugins/jvectormap/js/jquery-jvectormap-world-mill-en.js"></script> -->

<!--ChartJs-->
<!-- <script src="catalog/view/theme/default/halobig/plugins/chartjs/js/Chart.min.js"></script> -->

<!--Morris Charts-->
<!-- <script src="catalog/view/theme/default/halobig/plugins/morris/js/raphael-min.js"></script>
<script src="catalog/view/theme/default/halobig/plugins/morris/js/morris.min.js"></script> -->

<!--Float Charts-->
<!-- <script src="catalog/view/theme/default/halobig/plugins/flot/js/jquery.flot.min.js"></script>
<script src="catalog/view/theme/default/halobig/plugins/flot/js/jquery.flot.tooltip.min.js"></script>
<script src="catalog/view/theme/default/halobig/plugins/flot/js/jquery.flot.resize.min.js"></script>
<script src="catalog/view/theme/default/halobig/plugins/flot/js/jquery.flot.pie.min.js"></script>
<script src="catalog/view/theme/default/halobig/plugins/flot/js/jquery.flot.time.min.js"></script> -->

<!--Functions Js-->
<script src="catalog/view/theme/default/halobig/js/functions.js"></script>

<!--Dashboard Js-->
<script src="catalog/view/theme/default/halobig/js/dashboard.js"></script>




   <script type="text/javascript">
   
   	$('.packet-invest').on('submit', function(){

   		if ( $(this).children('.form_code').val() == "")
   		{
   			$(this).children('.form_code').css({'border':'1px solid red'});
   			$(this).children('.form_code').attr('placeholder','Vui lòng nhập mã Code');
   			return false;
   		}

   		var self = $(this);
   		alertify.confirm('<p class="text-center" style="font-size:25px;color: black;height: 40px">Bạn có muốn tham gia gói  '+$(this).children('input').val()+' VNĐ không ? ?</p>',
		  function(){
		    window.funLazyLoad.start();
	   		setTimeout(function(){
				self.ajaxSubmit({
					success : function(result) {
						result = $.parseJSON(result);
						if (result.no_money == 1)
						{
							window.funLazyLoad.reset();
							xhtml = '<div class="col-md-12"><h2 class="text-center">Code bạn nhập không đúng<p></div>';
							alertify.alert(xhtml, function(){
							 
							  });	
						}
						else
						{
							window.funLazyLoad.reset();
							xhtml = '<div class="col-md-12"><h3 class="text-center">Kích hoạt gói thành công. Cám ơn bạn đã sử dụng dịch vụ</h3></div>';
							alertify.alert(xhtml, function(){
							    window.funLazyLoad.reset();
								    location.reload(true);
							  });
						}
						
						
					}
				});
				
			}, 200);
		  },
		  function(){
		});
   		return false;
   	});


   	$('.packet-invest-upgray').on('submit', function(){

   		if ( $(this).children('.form_code').val() == "")
   		{
   			$(this).children('.form_code').css({'border':'1px solid red'});
   			$(this).children('.form_code').attr('placeholder','Vui lòng nhập mã Code');
   			return false;
   		}

   		var self = $(this);
   		alertify.confirm('<p class="text-center" style="font-size:25px;color: black;height: 40px">Bạn có muốn gia hạn gói không ? ?</p>',
		  function(){
		    window.funLazyLoad.start();
	   		setTimeout(function(){
				self.ajaxSubmit({
					success : function(result) {
						result = $.parseJSON(result);
						if (result.no_money == 1)
						{
							window.funLazyLoad.reset();
							xhtml = '<div class="col-md-12"><h2 class="text-center">Code bạn nhập không đúng<p></div>';
							alertify.alert(xhtml, function(){
							 
							  });	
						}
						else
						{
							window.funLazyLoad.reset();
							xhtml = '<div class="col-md-12"><h3 class="text-center">Gia hạn gói thành công. Cám ơn bạn đã sử dụng dịch vụ</h3></div>';
							alertify.alert(xhtml, function(){
							    window.funLazyLoad.reset();
								    location.reload(true);
							  });
						}
						
						
					}
				});
				
			}, 200);
		  },
		  function(){
		});
   		return false;
   	});
   	
	
   </script>
  

</body>
</html>
  
   