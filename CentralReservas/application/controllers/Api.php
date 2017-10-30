<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller { 

	public function index()
	{
		//echo "Base Url --> ".base_url();		
		$this->load->helper('url');
	}

	public function load_data_bonus(){
		$this->load->model('QueryBonus');
		//echo "Numer extras --> ".count($this->QueryBonus->get_all_bonus());
		return $this->QueryBonus->get_all_bonus();
	}


	public function find_room_free_by_date(){
		$this->load->view('find_rooms_by_date');
	}

	public function load_free_room_by_date($datein, $dateout){		
		$data_holder = array();
		$room = array();	
		$this->load->database('default');
		$this->load->model('Query');		
		$query = $this->Query->get_free_rooms_by_date($datein, $dateout);
		foreach ($query->result() as $row)
		{
			$price = $this->Query->get_price($datein, $dateout, $row->name);
			$new_data = array('Name' => $row->name);
			$room = array_merge($room, $new_data);
			$new_data = array('Description' => $row->description);
			$room = array_merge($room, $new_data);
			$new_data = array('Capacity' => $row->capacity);
			$room = array_merge($room, $new_data);					
			$new_data = array('Price' => $price);
			$room = array_merge($room, $new_data);			
			$data_holder[] = $room;
		}
		return $data_holder;
	}

	public function list_free_room_by_date(){
		$datein = $this->input->post("datein");
		$dateout = $this->input->post("dateout");
		if ($dateout == "")
			$dateout = "2017-10-31";
		if ($datein == "")
			$datein = "2017-01-01";	
		$data['datein'] = $datein;
		$data['dateout'] = $dateout;
		$data['title'] = "TITULO";
		$data['Rooms'] = $this->load_free_room($datein, $dateout);
		$this->load->view('list_free_room_by_date', $data);
	}


	public function calculate_price_room_by_date(){
		// buscar el radio button que este seleccionado
		$datein = $this->input->get('datein');
		$dateout = $this->input->get('dateout');
		//echo "Date in --> ".$datein;
		//echo "Date out -->  ".$dateout;
		//print_r ($this->input->post('myRadioButton'));
		$myRadioButton = $this->input->post("myRadioButton");
		if(empty($myRadioButton))
  		{
    		echo("You didn't select any radio button.");
  		}
  		else
  		{
    		// Llamar vista elegir extras pasandole los datos de la habitación
    		$rooms_free = $this->load_free_room_by_date	($datein, $dateout);
    		//echo "Numero habitaciones libres -> ".count($rooms_free);
    		//echo "Habitación seleccionada -> ".$myRadioButton[0];
    		$bonus = $this->load_data_bonus();
    		$room = $rooms_free[$myRadioButton[0]];
    		$data['room'] = $room;
    		$data['bonus'] = $bonus;
    		/*
    		?>
			<pre>
				<?php print_r($data); ?>
			</pre>
			<?php
          */
			$this->load->view('calculate_room', $data);

  		}
	}	

	public function create_reservation()
	{

		$this->load->view('reservation');
	}	




   //**************************************************************************************************************************
	// Metodos para crear la lista de precios según fecha y según tipo de habitación


	public function find_price_rooms_type_by_date(){
		$this->load->view('find_price_type_room');
	}

	public function load_data_room($datein, $dateout){
		$this->load->database('default');
		$this->load->model('Query');
		$this->load->model('QueryBonus');
		$data_holder = array();
		$room = array();
		$types_rooms = $this->Query->get_types_room();
		$types_bonus = $this->load_data_bonus();
		for ($i = 0; $i < count($types_rooms); $i++){
			$aux = $this->Query->select_room_by_type($types_rooms[$i], $datein, $dateout);			
			//$aux->show_room();
			foreach ($types_bonus as $bonu)
			{
				$new_data = array('Name' => $aux->get_name());
				$room = array_merge($room, $new_data);
				$new_data = array('Description' => $aux->get_description());
				$room = array_merge($room, $new_data);
				$new_data = array('Capacity' => $aux->get_capacity());
				$room = array_merge($room, $new_data);			
				$new_data = array('Bonu' => $bonu['Name']);
				$room = array_merge($room, $new_data);			
				$price = ($bonu['Price'] + $aux->get_price_by_room());
				$new_data = array('Price' => $price);
				$room = array_merge($room, $new_data);			
				$data_holder[] = $room;
			}

		}
		return $data_holder;
	}

	public function list_price_by_room(){
		
		//echo "Comienza busqueda de habitaciones en las fechas indicadas.";
		$datein = $this->input->post("datein");
		$dateout = $this->input->post("dateout");

		$data['title'] = "TITULO";
		$data['Rooms'] = $this->load_data_room($datein, $dateout);
		/*
		?>
		<pre>
			<?php print_r($data); ?>
		</pre>
	<?php
		echo "Size data --> ". count($data);
		*/

		$this->load->view('list', $data);

	}

	/**********************************************************************************************************/
	// Hace busqueda de habitaciones según este libres o no, pero por el atributo free de la tabla rooms
	// Se muestra un listado de las habitaciones libres y con el precio calculoado sin extras. 

	public function find_room_free(){
		$this->load->view('find_free_room');
	}

	public function load_free_room($datein, $dateout){		
		$data_holder = array();
		$room = array();
		$this->load->database('default');
		$this->load->model('Query');		
		$query = $this->Query->get_free_rooms();
		foreach ($query->result() as $row)
		{			
			$price = $this->Query->get_price($datein, $dateout, $row->name);
			$new_data = array('Name' => $row->name);
			$room = array_merge($room, $new_data);
			$new_data = array('Description' => $row->description);
			$room = array_merge($room, $new_data);
			$new_data = array('Capacity' => $row->capacity);
			$room = array_merge($room, $new_data);					
			$new_data = array('Price' => $price);
			$room = array_merge($room, $new_data);			
			$data_holder[] = $room;
		}
		return $data_holder;
	}


	public function list_free_room(){
		$datein = $this->input->post("datein");
		$dateout = $this->input->post("dateout");
		//echo "Date in --> ".$datein;
		//echo "Date out --> ".$dateout;
		$data['title'] = "TITULO";
		$data['Rooms'] = $this->load_free_room($datein, $dateout);
		$this->load->view('list_free', $data);
	}


	public function calculate_price_room(){
		// buscar el radio button que este seleccionado
		print_r ($this->input->post('myRadioButton'));
		$myRadioButton = $this->input->post("myRadioButton");
		if(empty($myRadioButton))
  		{
    		echo("You didn't select any radio button.");
  		}
  		else
  		{
    		// Llamar vista elegir extras pasandole los datos de la habitación
    		$rooms_free = $this->load_free_room($datein, $dateout);
    		echo "Numero habitaciones libres -> ".count($rooms_free);
    		echo "Habitación seleccionada -> ".$myRadioButton[0];

  		}
	}

}