<?php
function DisplayMasterTableInfo_loanaccounts($params)
{
	$keys = $params["keys"];
	$detailtable = $params["detailtable"];
	$data = $params["masterRecordData"];
	
	$xt = new Xtempl();
	$tName = "loanaccounts";
	$xt->eventsObject = getEventObject($tName);
	
	include_once('classes/listpage.php');
	include_once('classes/listpage_simple.php');
	$mParams  = array();
	$mParams["xt"] = &$xt;
	$mParams["mode"] = LIST_MASTER;
	$mParams["pageType"] = PAGE_LIST;
	$mParams["flyId"] = $params["recId"];
	$masterPage = ListPage::createListPage($tName, $mParams);
	
	$settings = $masterPage->pSet;
	$viewControls = new ViewControlsContainer($settings, PAGE_LIST, $masterPage);
	
	$keysAssoc = array();
	$showKeys = "";	

	if($detailtable == "loan")
	{
		$keysAssoc["AccountNumber"] = $keys[1-1];
				
				$keyValue = $viewControls->showDBValue("AccountNumber", $keysAssoc);
		$showKeys.= " ".GetFieldLabel("loanaccounts","AccountNumber").": ".$keyValue;
		$xt->assign('showKeys', $showKeys);
	}

	if( !$data || !count($data) )
		return;
	
	// reassign pagetitlelabel function adding extra params
	$xt->assign_function("pagetitlelabel", "xt_pagetitlelabel", array("record" => $data, "settings" => $settings));
	
	$keylink = "";
	$keylink.= "&key1=".runner_htmlspecialchars(rawurlencode(@$data["id"]));
	
	$xt->assign("id_mastervalue", $viewControls->showDBValue("id", $data, $keylink));
	$format = $settings->getViewFormat("id");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("id")))
		$class = ' rnr-field-number';
		
	$xt->assign("id_class", $class); // add class for field header as field value
	$xt->assign("AccountNumber_mastervalue", $viewControls->showDBValue("AccountNumber", $data, $keylink));
	$format = $settings->getViewFormat("AccountNumber");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("AccountNumber")))
		$class = ' rnr-field-number';
		
	$xt->assign("AccountNumber_class", $class); // add class for field header as field value
	$xt->assign("AccountHolder_mastervalue", $viewControls->showDBValue("AccountHolder", $data, $keylink));
	$format = $settings->getViewFormat("AccountHolder");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("AccountHolder")))
		$class = ' rnr-field-number';
		
	$xt->assign("AccountHolder_class", $class); // add class for field header as field value
	$xt->assign("LastTransactionDate_mastervalue", $viewControls->showDBValue("LastTransactionDate", $data, $keylink));
	$format = $settings->getViewFormat("LastTransactionDate");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("LastTransactionDate")))
		$class = ' rnr-field-number';
		
	$xt->assign("LastTransactionDate_class", $class); // add class for field header as field value
	$xt->assign("OpeningBalance_mastervalue", $viewControls->showDBValue("OpeningBalance", $data, $keylink));
	$format = $settings->getViewFormat("OpeningBalance");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("OpeningBalance")))
		$class = ' rnr-field-number';
		
	$xt->assign("OpeningBalance_class", $class); // add class for field header as field value
	$xt->assign("InterestRate_mastervalue", $viewControls->showDBValue("InterestRate", $data, $keylink));
	$format = $settings->getViewFormat("InterestRate");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("InterestRate")))
		$class = ' rnr-field-number';
		
	$xt->assign("InterestRate_class", $class); // add class for field header as field value
	$xt->assign("SetWithdrawDate_mastervalue", $viewControls->showDBValue("SetWithdrawDate", $data, $keylink));
	$format = $settings->getViewFormat("SetWithdrawDate");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("SetWithdrawDate")))
		$class = ' rnr-field-number';
		
	$xt->assign("SetWithdrawDate_class", $class); // add class for field header as field value
	$xt->assign("ClientNo_mastervalue", $viewControls->showDBValue("ClientNo", $data, $keylink));
	$format = $settings->getViewFormat("ClientNo");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("ClientNo")))
		$class = ' rnr-field-number';
		
	$xt->assign("ClientNo_class", $class); // add class for field header as field value
	$xt->assign("LastModifiedBy_mastervalue", $viewControls->showDBValue("LastModifiedBy", $data, $keylink));
	$format = $settings->getViewFormat("LastModifiedBy");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("LastModifiedBy")))
		$class = ' rnr-field-number';
		
	$xt->assign("LastModifiedBy_class", $class); // add class for field header as field value
	$xt->assign("LastModifiedDate_mastervalue", $viewControls->showDBValue("LastModifiedDate", $data, $keylink));
	$format = $settings->getViewFormat("LastModifiedDate");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("LastModifiedDate")))
		$class = ' rnr-field-number';
		
	$xt->assign("LastModifiedDate_class", $class); // add class for field header as field value
	$xt->assign("AccountName_mastervalue", $viewControls->showDBValue("AccountName", $data, $keylink));
	$format = $settings->getViewFormat("AccountName");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("AccountName")))
		$class = ' rnr-field-number';
		
	$xt->assign("AccountName_class", $class); // add class for field header as field value
	$xt->assign("LoanCreditPaymentPurpose_mastervalue", $viewControls->showDBValue("LoanCreditPaymentPurpose", $data, $keylink));
	$format = $settings->getViewFormat("LoanCreditPaymentPurpose");
	$class = " rnr-field-text";
	if($format == FORMAT_FILE) 
		$class = ' rnr-field-file'; 
	if($format == FORMAT_AUDIO)
		$class = ' rnr-field-audio';
	if($format == FORMAT_CHECKBOX)
		$class = ' rnr-field-checkbox';
	if($format == FORMAT_NUMBER || IsNumberType($settings->getFieldType("LoanCreditPaymentPurpose")))
		$class = ' rnr-field-number';
		
	$xt->assign("LoanCreditPaymentPurpose_class", $class); // add class for field header as field value

	$layout = GetPageLayout("loanaccounts", 'masterlist');
	if( $layout )
		$xt->assign("pageattrs", 'class="'.$layout->style." page-".$layout->name.'"');
	
	$xt->displayPartial(GetTemplateName("loanaccounts", "masterlist"));
}

?>