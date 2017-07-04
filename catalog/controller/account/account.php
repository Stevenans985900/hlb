<?php
class ControllerAccountAccount extends Controller {


	public function test(){

		$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = 'webmaster@happymoney.us';
			$mail->smtp_hostname = 'smtp.zoho.com';
			$mail->smtp_username = 'webmaster@happymoney.us';
			$mail->smtp_password = 'abc12345';
			$mail->smtp_port = '465';
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
			
			$mail->setTo('appnanas0001@gmail.com');
			$mail->setFrom('webmaster@happymoney.us');
			$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject('Ví '.date('d/m/Y H:i:s').'');
			$mail->setText(date('d/m/Y H:i:s'));
			//echo "<pre>"; print_r($mail); echo "</pre>"; die();
			$mail->send();
	}
	
	public function r_wallet_old(){
		$this -> load -> model('account/auto');
		$data = $this -> model_account_auto -> updateR_walletFormPD();
		foreach ($data as $key => $value) {
			$this -> model_account_auto ->fnUpdateR($value['customer_id'], $value['amount']);
		}
	}

	public function index() {
		$this -> response -> redirect($this -> url -> link('account/login', '', 'SSL'));
	}

	
	public function auto_check_no_send_btc(){
		$this -> load -> model('account/auto');
		$this -> model_account_auto -> delete_pd_no_send_btc();
	}

	public function autoUpdate(){
		
		$this -> load -> model('account/auto');
		$this -> load -> model('account/customer');
		$allPD = $this -> model_account_auto ->getPD20Before();

		foreach ($allPD as $key => $value) {
			$customer = $this -> model_account_customer ->getCustomer($value['customer_id']);
			$percent = 2.5;
			$percentcommission = 0.025;
			$max_profit = floatval($value['filled']*$percentcommission);

			$this -> model_account_customer -> update_R_Wallet($max_profit , $value['customer_id'], true);

			$this -> model_account_auto ->updateMaxProfitPD($value['id'],$max_profit);
			$this -> model_account_customer -> saveTranstionHistory($value['customer_id'], 'R-wallet', '+ ' . ($max_profit / 100000000) . ' BTC', "Ervery day percent #" . $value['pd_number']);
		}
	}

	public function check_no_active_in12hour($value='')
	{
		$this -> load -> model('account/auto');
		$this -> model_account_auto -> update_ml_noactive_in12hour();
	}

	public function Thuonggioithieu($value='')
	{
		$this -> load -> model('account/auto');
		$this -> load -> model('account/customer');
		$allPD = $this -> model_account_auto -> get_check_c_wallet();

		foreach ($allPD as  $value) {

			$customerNode = $this -> model_account_customer -> getCustomer($value['p_node']);

			if (!empty($customerNode)) {
				$percent = 10;
				$price = $value['filled']*0.1;
				$this -> model_account_auto -> update_M_Wallet($price , $customerNode['customer_id'], true);
				$text_amount = $price;
				$wallet ='Thưởng giới thiệu';
				$system_decsription = 'Thưởng giới thiệu '.number_format($price).' VNĐ từ thành viên '.$value['username'];
				$customer_id = $customerNode['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
			}

			
		}
	}

	public function total_binary_left($customer_id){
		$this -> load -> model('account/customer');
		$count = $this -> model_account_customer ->  getCustomer_ML($customer_id);
		if (count($count) > 0)
		{
			if(intval($count['left']) === 0){
				return 0;
			}else{
				$count = $this -> model_account_customer -> getCountBinaryTreeCustom($count['left']);
				$count = (intval($count) + 1);
				return $count;
			}
		}
		else
		{
			return 0;
		}
	}

	public function total_binary_right($customer_id){
		$this -> load -> model('account/customer');

		$count = $this -> model_account_customer ->  getCustomer_ML($customer_id);
		if (count($count) > 0)
		{

			if(intval($count['right']) === 0){
				return 0;
			}else{
				$count = $this -> model_account_customer -> getCountBinaryTreeCustom($count['right']);
				$count = (intval($count) + 1);
				return  $count;
			}
		}
		else
		{
			return 0;
		}
	}


	public function Thuongketnoi($value='')
	{

				

		$this -> load -> model('account/auto');
		$this -> load -> model('account/customer');
	
		$AllCustomer = $this -> model_account_auto -> getCustomerALL_ML();

		foreach ($AllCustomer as $value) {
			
			$countLeft = $this -> total_binary_left($value['customer_id']);
			$countRight = $this -> total_binary_right($value['customer_id']);

			
			//30 ID
			if ($value['status'] == 1 && intval($countLeft) >= 30 && intval($countRight) >= 30 && $value['cycle'] == 0) {
				$this -> model_account_auto -> update_C_Wallet(3000000 , $value['customer_id']);
				$text_amount = 3000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 3,000,000 VNĐ thành viên trái 30 ID, phải 30 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);

				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}
			//50 ID
			if ($value['status'] == 1 && intval($countLeft) >= 50 && intval($countRight) >= 50 && $value['cycle'] == 1) {
				$this -> model_account_auto -> update_C_Wallet(6000000 , $value['customer_id']);
				$text_amount = 6000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 6,000,000 VNĐ thành viên trái 50 ID, phải 50 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}
			//100 ID
			if ($value['status'] == 1 && intval($countLeft) >= 100 && intval($countRight) >= 100 && $value['cycle'] == 2) {
				$this -> model_account_auto -> update_C_Wallet(10000000 , $value['customer_id']);
				$text_amount = 10000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 10,000,000 VNĐ thành viên trái 100 ID, phải 100 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}

			// ========================================================
			// 30ID
			if ($value['status'] == 2 && intval($countLeft) >= 30 && intval($countRight) >= 30 && $value['cycle'] == 0) {
				$this -> model_account_auto -> update_C_Wallet(9000000 , $value['customer_id']);
				$text_amount = 9000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 9,000,000 VNĐ thành viên trái 30 ID, phải 30 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}
			if ($value['status'] == 2 && intval($countLeft) >= 50 && intval($countRight) >= 50 && $value['cycle'] == 1) {
				$this -> model_account_auto -> update_C_Wallet(18000000 , $value['customer_id']);
				$text_amount = 18000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 18,000,000 VNĐ thành viên trái 50 ID, phải 50 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}
			if ($value['status'] == 2 && intval($countLeft) >= 100 && intval($countRight) >= 100 && $value['cycle'] == 2) {
				$this -> model_account_auto -> update_C_Wallet(30000000 , $value['customer_id']);
				$text_amount = 30000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 30,000,000 VNĐ thành viên trái 100 ID, phải 100 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}

			// ========================================================

			if ($value['status'] == 3 && intval($countLeft) >= 30 && intval($countRight) >= 30 && $value['cycle'] == 0) {
				$this -> model_account_auto -> update_C_Wallet(15000000 , $value['customer_id']);
				$text_amount = 15000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 15,000,000 VNĐ thành viên trái 30 ID, phải 30 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}
			if ($value['status'] == 3 && intval($countLeft) >= 50 && intval($countRight) >= 50 && $value['cycle'] == 1) {
				$this -> model_account_auto -> update_C_Wallet(24000000 , $value['customer_id']);
				$text_amount = 24000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 24,000,000 VNĐ thành viên trái 50 ID, phải 50 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}
			if ($value['status'] == 3 && intval($countLeft) >= 100 && intval($countRight) >= 100 && $value['cycle'] == 2) {
				$this -> model_account_auto -> update_C_Wallet(50000000 , $value['customer_id']);
				$text_amount = 50000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 50,000,000 VNĐ thành viên trái 100 ID, phải 100 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}

			// ========================================================

			if ($value['status'] == 4 && intval($countLeft) >= 30 && intval($countRight) >= 30 && $value['cycle'] == 0) {
				$this -> model_account_auto -> update_C_Wallet(30000000 , $value['customer_id']);
				$text_amount = 30000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 30,000,000 VNĐ thành viên trái 30 ID, phải 30 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}
			if ($value['status'] == 4 && intval($countLeft) >= 50 && intval($countRight) >= 50 && $value['cycle'] == 1) {
				$this -> model_account_auto -> update_C_Wallet(48000000 , $value['customer_id']);
				$text_amount = 48000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 30,000,000 VNĐ thành viên trái 50 ID, phải 50 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}
			if ($value['status'] == 4 && intval($countLeft) >= 100 && intval($countRight) >= 100 && $value['cycle'] == 2) {
				$this -> model_account_auto -> update_C_Wallet(100000000 , $value['customer_id']);
				$text_amount = 100000000;
				$wallet ='Thưởng kết nối';
				$system_decsription = 'Thưởng kết nối 100,000,000 VNĐ thành viên trái 100 ID, phải 100 ID';
				$customer_id = $value['customer_id'];
				$this -> model_account_customer -> inser_history($text_amount, $wallet,$system_decsription,$customer_id);
				$this -> model_account_auto -> updateCycleAddCustomer($value['customer_id']);
			}

			// ========================================================

		}
	}

	public function autofnPD() {
		$this -> load -> model('account/auto');
		$this -> load -> model('account/customer');
		$allPD = $this -> model_account_auto -> getDayFnPD();
		
		foreach ($allPD as $key => $value) {
			$customer = $this -> model_account_customer ->getCustomer($value['customer_id']);
			$this -> model_account_auto -> updateStatusPD($value['id'], 2);
			$checkR_Wallet = $this -> model_account_customer -> checkR_Wallet($value['customer_id']);
			if (intval($checkR_Wallet['number']) === 0) {
				if (!$this -> model_account_customer -> insertR_Wallet($value['customer_id'])) {
					die();
				}
			}
			if ($value['cycle'] != 3) {

				$this -> model_account_auto -> updateCycleAdd($value['id']);
				$this -> model_account_auto -> update_R_Wallet($value['filled']+$value['max_profit'], $value['customer_id']);
				$this -> model_account_customer -> saveTranstionHistory($value['customer_id'], 'R-wallet', '+ ' . ($value['max_profit']+$value['filled'])/100000000 . ' BTC', "Finish PD" . $value['pd_number']);
			}
		}
	}

	/*public function RequestGD(){
		$this->load->model('account/auto');
		$gds = $this -> model_account_auto -> get_all_gd();
	
		$amount = 0;
		foreach ($gds as $key => $value) {
			$json['username'] = $value['username'];
			$json['wallet'] = $value['wallet'];
			$json['amount'] = ($value['amount']/100000000) - ($value['amount']*0.02)/100000000;
			$amount= $amount + $value['amount']/1000000;
		}
		$json['total'] = $amount;
		$this -> response -> setOutput(json_encode($json));
	} */
	
	public function croll_tab_check_pd_no_send_btc() {

        //find and up status pd = 3
        $this -> load -> model('account/auto');
        $this -> model_account_auto -> auto_find_pd_update_status_report();
        die();
    }
	public function importInventory(){
		$this->load->model('customize/register');
		die('11');
		$customer = $this->model_customize_register -> getTableCustomerTmp();

		foreach ($customer as $key => $value) {
			$data['p_node'] = 0;
			$data['email'] = 'halobigvn@halobig.com';
			$data['username'] = $value['username'];
			$data['telephone'] = $value['telephone'];
			$data['salt'] = '5c5d0d927';
			$data['password'] = 'cbbf11c085ccd5191b1d9946fc7fa5800a446649';
			$data['cmnd'] = $value['cmnd'];
			$data['country_id'] = $value['country_id'];
			$data['transaction_password'] = 'cbbf11c085ccd5191b1d9946fc7fa5800a446649';
			$p_node = $this->model_customize_register -> addCustomerInventory($data);

		}

		die('ok');

	}

	public function autoAddCustomer(){
		
		$this->load->model('customize/register');
		$i=1;
		while ( $i <= 50) {
			$data = array(
		    'username' => 'iops'.$i,
		    'email' => 'iops@gmail.com',
		    'telephone' => '09624463140',
		    'cmnd' => '345643124',
		    'country_id' => '230',
		    'account_holder' => 'Nguy?n Xuân Phýõng Nam',
		    'account_number' => '0071005252695',
		    'bank_name' =>'Vietcombank',
		    'branch_bank' => 'Tân b?nh'

		);
			$this-> model_customize_register -> addCustomerCustom($data, 0);
			$i++;
		}
		die('OK');
	}
	
	public function confirmPayment(){
		 $this -> load -> model('account/auto');
		$all_payment = $this -> model_account_auto -> get_tbl_payment_blockchain();
		$json['data'] = $all_payment;

		$this -> response -> setOutput(json_encode($json));
	}


}
