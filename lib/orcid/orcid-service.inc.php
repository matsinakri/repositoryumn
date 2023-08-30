<?php  

require 'config.inc.php';

class OrcidService {

	private $token;
	var $client_id;
	var $client_secret;
	var $host;

	public function __construct()
	{
			$this->client_id =  constant("ORCID_CLIENT_ID");
			$this->client_secret = constant("ORCID_CLIENT_SECRET");
			$this->host = constant("ORCID_HOST");
			$this->token = $this->getToken();
	}

	public function getOrcidID($author_name)
	{
		$result = "";
	    $name_query = urlencode('"'.$author_name.'"');
	    $curl = curl_init();

	    curl_setopt_array($curl, array(
	      CURLOPT_URL => $this->host."v3.0/search/?q=".$name_query,
	      CURLOPT_RETURNTRANSFER => true,
	      CURLOPT_ENCODING => "",
	      CURLOPT_MAXREDIRS => 10,
	      CURLOPT_TIMEOUT => 30,
	      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	      CURLOPT_CUSTOMREQUEST => "GET",
	      CURLOPT_HTTPHEADER => array(
	        "accept: application/json",
	        "authorization: Bearer ".$this->token
	      ),
	    ));

	    $response = curl_exec($curl);
	    $err = curl_error($curl);

	    curl_close($curl);

	    if (!$err) {
	      $orcid = json_decode($response);
	      $orcid_identifier = $orcid->result[0]->{'orcid-identifier'};
	      $result = $orcid_identifier->path;
	    }

	    return $result;

	}

	private function getToken()
	{
		$curl = curl_init();

		curl_setopt_array($curl, array(
		  CURLOPT_URL => $this->host."oauth/token",
		  CURLOPT_RETURNTRANSFER => true,
		  CURLOPT_ENCODING => "",
		  CURLOPT_MAXREDIRS => 10,
		  CURLOPT_TIMEOUT => 30,
		  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		  CURLOPT_CUSTOMREQUEST => "POST",
		  CURLOPT_POSTFIELDS => "client_id=".$this->client_id."&client_secret=".$this->client_secret."&grant_type=client_credentials&scope=%2Fread-public",
		  CURLOPT_COOKIE => "__cfduid=d1b7a3f1068080238c3530e947f5366d41599152131; X-Mapping-fjhppofk=EDEB8B375DA428655747278237992826",
		  CURLOPT_HTTPHEADER => array(
		    "accept: application/json",
		    "content-type: application/x-www-form-urlencoded"
		  ),
		));

		$response = curl_exec($curl);
		$err = curl_error($curl);

		curl_close($curl);
		
		if (!$err) {
			return;	 
		}

		return $response->access_token;; 
	}
}