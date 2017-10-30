<?php 
		
	class QueryBonus extends CI_Model
	{

		function __construct()
		{
			$this->load->database();
			$this->load->model('Bonus');						
		}


		public function get_all_bonus (){
			$query = $this->db->query("SELECT * FROM bonus;");
			$ArrayBonus = array();
			foreach ($query->result() as $row)
			{	
				$bonus = array();							
				$new_data = array('Name' => $row->name);
				$bonus = array_merge($bonus, $new_data);
				$new_data = array('Description' => $row->description);
				$bonus = array_merge($bonus, $new_data);
				$new_data = array('Price' => $row->price);
				$bonus = array_merge($bonus, $new_data);
				$ArrayBonus[] = $bonus;
			}
			return $ArrayBonus;										
		}

	}
?>