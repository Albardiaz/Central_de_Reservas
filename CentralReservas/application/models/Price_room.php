<?php
	
	/**
	* 
	*/
	class Price_room extends CI_Model
	{
		
		private $Date;
		private $Price;

		function __construct($date, $price)
		{
			parent::__construct();
			$this->Date = $date;
			$this->Price = $price;
		}

		function get_date (){
			return $this->Date;
		}

		function get_price (){
			return $this->Price;
		}

		function set_date($date){
			$this->Date = $date;
		}

		function set_price($price){
			$this->Price = $price;
		}
	}
?>