<?php
	
	/**
	* 
	*/
	class Bonus extends CI_Model
	{
		
		private $Name;
		private $Description;
		private $Price;

		function __construct()
		{
			parent::__construct();
		}

		function get_name (){
			return $this->Name;
		}

		function get_description(){
			return $this->Description;
		}

		function get_price(){
			return $this->Price;
		}

		function set_name($name){
			$this->Name = $name;
		}

		function set_description($description){
			$this->Description = $description;
		}

		function set_price ($price){
			$this->Price = $price;
		}

		function show_bonu (){
			echo "Nombe bonu: ".$this->Name;
			echo "Descripción: ".$this->Description;
			echo "Precio: ".$this->Price;
		}
	}

?>