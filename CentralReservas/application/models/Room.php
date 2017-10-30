<?php 
	
	
	class Room extends CI_Model
	{
		
		private $Name;
		private $Description;
		private $Capacity;
		private $Arraybonus;
		private $PriceByRoom;
		private $Free;

		function __construct()
		{
			parent::__construct();
			$this->load->model('Bonus');
		}

		function set_bonu(Bonus $bonu){
			$bn = array();
			$new_data = array('Bonu' => $bonu->get_name());
			$bn = array_merge($bn, $new_data);
			$new_data = array('Description' => $bonu->get_description());
			$bn = array_merge($bn, $new_data);
			$new_data = array('Price' => $bonu->get_price());
			$bn = array_merge($bn, $new_data);	
			$this->Arraybonus[] = $bn;
		}

		function set_name($name){
			$this->Name = $name;
		}

		function set_description($description){
			$this->Description = $description;
		}

		function set_capacity($capacity){
			$this->Capacity = $capacity;
		}

		function set_price_by_room($price){
			$this->PriceByRoom = $price;
		}


		function get_name(){
			return $this->Name;
		}

		function get_description(){
			return $this->Description;
		}

		function get_capacity(){
			return $this->Capacity;
		}

		function get_price_by_room(){
			return $this->PriceByRoom;
		}

		function show_room (){
			echo "**************************************************************************";
			echo "Datos de la habitación: \n";
			echo "Tipo habitación: ".$this->Name."\n";
			echo "Descripción: ".$this->Description."\n";
			echo "Capacyty: ".$this->Capacity."\n";
			echo "Precio habitación: ".$this->PriceByRoom."\n";
			echo "Extras --> ".count($this->Arraybonus);
			echo "**************************************************************************";

			
		}

	}   

 ?>
