<?php
	
	/**
	* 
	*/
	class Reservation extends CI_Model
	{
		
		private $Identified;
		private $Client_name;
		private $Coment;
		private $Date_in;
		private $Date_out;
		private $Room;
		private $Bonus;
		private $Total_price;

		function __construct($id, $client, $coment, $d_in, $d_out, $room, $bonus, $price)
		{
			parent::__construct();			
			$this->Identified = $id;
			$this->Client_name = $client;
			$this->Coment = $coment;
			$this->Date_in = $d_in;
			$this->Date_out = $d_out;
		
		}
		
	}

?>