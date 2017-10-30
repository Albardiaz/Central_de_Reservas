<?php 
		
	class Query extends CI_Model
	{
			
		function __construct()
		{
			$this->load->database();
			$this->load->model('Room');							
		}

		public function get_types_room (){
			$query = $this->db->query("SELECT DISTINCT name FROM rooms;");	
			$types = array();
			foreach ($query->result() as $row)
			{
				$types[] = $row->name;
			}
			return $types;
		}


		public function get_free_rooms(){
			$query = $this->db->query("SELECT * FROM rooms WHERE free IS NULL;");			
			return $query;
		}


		public function get_free_rooms_by_date($datein, $dateout){
			$query = $this->db->query("SELECT * from rooms where rooms.id not in (select busy_room.idRoom from busy_room 
 								WHERE (datein BETWEEN ($datein) and ($dateout)) OR (dateout BETWEEN ($datein) and ($dateout)))");
			return $query;

		}

		public function get_price ($datein, $dateout, $type_room)
		{
			$this->load->database();			
			if ($dateout == "")
				$dateout = "2017-10-31";
			if ($datein == "")
				$datein = "2017-01-01";		    			
			$query = $this->db->query("SELECT * FROM price_room WHERE date BETWEEN ('$datein') and ('$dateout');");
			$row = $query->row();
			if (isset($row))
			{				
				if ($type_room == "Individual")
				{					
					$p = $row->price + 5;
					//echo "Price --> ".$p;
					return $p;
				}
				elseif ($type_room == "Triple")
				{
					$p = $row->price - 3;
					return $p;
				}
				elseif (($type_room == "Suit") || ($type_room == "Junior Suit"))
				{
					$p = $row->price + 10;
					return $p;
				}
				else
				{
					return ($row->price);				
				}
			} 
		}

		public function select_room_by_type ($type_room, $datein, $dateout){				
			$query = $this->db->query("SELECT * FROM rooms WHERE name = '$type_room' LIMIT 1;");
			$row = $query->row();
			if (isset($row))
			{								
				$this->Room->set_name($row->name);
				$this->Room->set_description($row->description);
				$this->Room->set_capacity($row->capacity);
			}
			
			$this->Room->set_price_by_room($this->get_price($datein, $dateout, $type_room));
			return $this->Room;
		}

	}   

 ?>
