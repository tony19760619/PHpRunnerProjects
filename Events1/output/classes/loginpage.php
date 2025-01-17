<?php
require_once(getabspath("classes/cipherer.php"));
/**
 * Class for login page 
 *
 */
class LoginPage extends RunnerPage 
{
	public $auditObj = null;
		
	public $fromFacebook = false;
	
	public $notRedirect = false;
		
	public $flyMode	= "";
		
	public $rememberPassword = 0;
		
	/**
	 * @constructor
	 */
	function LoginPage(&$params) 
	{
		// call parent constructor
		parent::RunnerPage($params);
		
				$this->pSet = new ProjectSettings("evusers", $this->pageType);
		$this->pSetEdit = $this->pSet;
		$this->pSetSearch = new ProjectSettings($this->tName, PAGE_SEARCH); 
		$this->auditObj = GetAuditObject();
		$this->formBricks["header"] = "loginheader";
		$this->formBricks["footer"] = "loginbuttons";
		$this->assignFormFooterAndHeaderBricks( true );
	}		
	
	/**
	 * Set the 'connection' property
	 */
	protected function setTableConnection()
	{
		global $cman;
		$this->connection = $cman->getForLogin();		
	}	

	/**
	 * Set the 'cipherer' property
	 */
	protected function assignCipherer()
	{
		$this->cipherer = RunnerCipherer::getForLogin();
	}
	
	/**
	 *
	 */
	public function setSessionVariables()
	{
		parent::setSessionVariables();	
		$_SESSION["fromFacebook"] = false;
	}
	
	/**
	 * Login method
	 * @param String pUsername
	 * @param String pPassword
	 */
	function LogIn($pUsername, $pPassword)
	{
		if ( !$this->checkCaptcha() )
			return false;

		// username and password are stored in the database
		global $cUserNameFieldType, $cPasswordFieldType, $cUserNameField, $cPasswordField, $cDisplayNameField;
		
		$logged = false;
		$strUsername = (string)$pUsername;
		$strPassword = (string)$pPassword;
		
		$loginSet = ProjectSettings::getForLogin();
		$cipherer = RunnerCipherer::getForLogin( $loginSet );			
	
		$sUsername = $strUsername;
		$sPassword = $strPassword;
		
		if( $cipherer->isFieldEncrypted($cUserNameField) )
			$strUsername = $cipherer->MakeDBValue($cUserNameField, $strUsername, "", true);
		else
		{
			if( NeedQuotes($cUserNameFieldType) )
				$strUsername = $this->connection->prepareString( $strUsername );
			else
				$strUsername = 0 + $strUsername;
		}
		
		if( $cipherer->isFieldEncrypted($cPasswordField) )
			$strPassword = $cipherer->MakeDBValue($cPasswordField, $strPassword, "", true);		
		else
		{
			if( NeedQuotes($cPasswordFieldType) )
				$strPassword = $this->connection->prepareString( $strPassword );
			else
				$strPassword = 0 + $strPassword;
		}

		if( $loginSet )
		{
			if( !$this->pSet->isCaseInsensitiveUsername() ) 
			{
				$where = $this->getFieldSQLDecrypt($cUserNameField) . 
					"=".$strUsername." and ".$this->getFieldSQLDecrypt($cPasswordField)."=".$strPassword;
 			} 
			else 
			{
				$where = $this->connection->upper( $this->getFieldSQLDecrypt($cUserNameField) ).
					"=".$this->pSet->getCaseSensitiveUsername($strUsername)." and ".$this->getFieldSQLDecrypt($cPasswordField).
					"=".$strPassword;
			}		 
			$tempSQLQuery = $loginSet->GetTableData(".sqlquery");
			$tempSQLQuery->addWhere( $where );
				$strSQL = $tempSQLQuery->toSql();		 
		}
		else
		{
			$strSQL = "select * from ".$this->connection->addTableWrappers("evusers")
				." where ".$this->connection->addFieldWrappers($cUserNameField)."=".$strUsername
				." and ".$this->connection->addFieldWrappers($cPasswordField)."=".$strPassword;
			}
		
	 	$data = $cipherer->DecryptFetchedArray( $this->connection->query( $strSQL )->fetchAssoc() );
		if( $data )
		{
			if( $this->pSet->getCaseSensitiveUsername( @$data[ $cUserNameField ]) == $this->pSet->getCaseSensitiveUsername($sUsername) && @$data[ $cPasswordField ] == $sPassword )
			{
				$logged = true;
				$pDisplayUsername = $data[ $cDisplayNameField ] != '' ? $data[ $cDisplayNameField ] : $sUsername;
			}
		}

		if( $logged )
		{
			DoLogin(false, $pUsername, $pDisplayUsername, "", ACCESS_LEVEL_USER, $pPassword, $this);
			SetAuthSessionData($pUsername, $data, $this->fromFacebook, $pPassword, $this);
			return true;
		}

		if( $this->auditObj )
		{
			$this->auditObj->LogLoginFailed($pUsername);
			$this->auditObj->LoginUnsuccessful($pUsername);
		}
		return false;		
	}
	
	/**
	 * Logout
	 *
	 */
	function Logout($redirectToLogin = false, $message = "") 
	{
		if($this->auditObj)
			$this->auditObj->LogLogout();
			
		Security::clearSecuritySession();

		
		// redirect to login page and show message
		if ($redirectToLogin) 
		{
			$url = GetTableLink("login");
			if (!empty($message))
				$url .= "?cmessage=".$message;
			header("Location: ".$url);
			exit();
		}
	}
	
	/**
	 * @param String url
	 */
	function LogoutAndRedirect($url = "") 
	{
		$this->Logout();
		
		if ($url == "") 
			$url = GetTableLink("menu");
		
		header("Location: ".$url);
		exit();
	}
	

	/**
	 * Check is captcha exists on current page
	 *
	 * @intellisense
	 */	
	function captchaExists()
	{
		$captchaSettings = GetGlobalData("CaptchaSettings", false);
		return $captchaSettings["isEnabledOnLogin"];
	}

	function getCaptchaId() 
	{
		return "login";
	}

	/**
	 * @param String messageText
	 */
	public function setDatabaseError( $messageText )
	{
		global $message;
		$message = $messageText;
	}
	
	public function setCredentialsCookie($pUsername, $pPassword)
	{
		setcookie("username", $this->rememberPassword ? $pUsername : "", time() + 365*1440*60);
		setcookie("password", $this->rememberPassword ? $pPassword : "", time() + 365*1440*60);
	}
	
	/**
	 *
	 */
	public function setLangParams()
	{
	}
	
	/**
	 *
	 */
	protected function assignBody()
	{
		$this->body["begin"] .= GetBaseScriptsForPage(false);
		$this->body["begin"] .= "<form method=\"post\" action='".GetTableLink("login")."' id=\"form".$this->id."\" name=\"form".$this->id."\">
								<input type=\"hidden\" name=\"btnSubmit\" value=\"Login\">";	
		
		$this->body["end"] .= "</form>";
		$this->body['end'] .= '<script>';
		$this->body['end'] .= "window.controlsMap = ".my_json_encode($this->controlsHTMLMap).";";
		$this->body['end'] .= "window.viewControlsMap = ".my_json_encode($this->viewControlsHTMLMap).";";
		$this->body['end'] .= "window.settings = ".my_json_encode($this->jsSettings).";</script>";
				$this->body["end"] .= "<script type=\"text/javascript\" src=\"".GetRootPathForResources("include/runnerJS/RunnerAll.js")."\"></script>";
		$this->body["end"] .= '<script>'.$this->PrepareJS()."</script>";
		
		$this->xt->assignbyref("body", $this->body);
	}
	
	/**
	 *
	 */
	public function doCommonAssignments()
	{
		$this->xt->assign("id", $this->id);
		$this->xt->assign("loginlink_attrs", 'id="submitLogin'.$this->id.'"');
		
		$this->assignBody();
		
		$this->setLangParams();


		$rememberbox_checked = "";
		if( $rememberPassword || @$_COOKIE["username"] || @$_COOKIE["password"] )
			$rememberbox_checked = " checked";		
		$this->xt->assign("rememberbox_attrs", ($this->is508 ? "id=\"remember_password\" " : "")."name=\"remember_password\" value=\"1\"".$rememberbox_checked);		
		
		$this->xt->assign("guestlink_block", isGuestLoginAvailable());
		
		$this->xt->assign("username_label", true);
		$this->xt->assign("password_label", true);
		$this->xt->assign("remember_password_label", true);
		if( $this->is508 )
		{
			$this->xt->assign_section("username_label", "<label for=\"username\">", "</label>");
			$this->xt->assign_section("password_label", "<label for=\"password\">", "</label>");
			$this->xt->assign_section("remember_password_label", "<label for=\"remember_password\">", "</label>");
		}			
	}
	
	/**
	 * temp function
	 */
	public function showPage( $message, $ajaxmessage, $logged )
	{	
		global $globalEvents, $cLoginTable;

		if( $globalEvents->exists("BeforeShowLogin") )
			$globalEvents->BeforeShowLogin($this->xt, $this->templatefile, $this);		
		
		if( $this->flyMode == 2 )
		{
			$returnJSON = array();
			if ($message)
			{
				$returnJSON['message'] = $message;
			}
			elseif ($logged)
			{
				$returnJSON['redirect'] = $ajaxmessage;
			}

			echo printJSON($returnJSON);
			exit();
		}

		// load popup login page
		if( $this->flyMode == 1 )
		{
			if( $this->notRedirect ) 
			{
				$this->body["begin"] .= "<input type=hidden id='notRedirect' value=1>";
				$this->xt->assign("continuebutton_attrs",'href="#" style="display:none" id="continueButton"');
				$this->xt->assign("continue_button",true);
			}
			$this->xt->assign("message_block",true);
			$this->xt->assign("message","<div id='login_message' class='message rnr-error'>".$message."</div>");
			if (!$message)
			{
				$this->xt->displayBrickHidden("message");
			}
			$this->xt->assign("id", $this->id);
			$this->xt->assign("footer", false);
			$this->xt->assign("header", false);
			$this->xt->assign("body", $this->body);	
			$this->xt->assign("guestlink_block", false);
			$this->xt->assign("registerlink_attrs", 'name="RegisterPage" data-table="'.$cLoginTable.'"');
			$this->xt->assign("forgotpasswordlink_attrs", 'name="ForgotPasswordPage"');

			$this->displayAJAX($this->templatefile, $this->id + 1);
			exit();
		}

		$this->display( $this->templatefile );
	}
}
?>