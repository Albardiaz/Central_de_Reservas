create table bonus(
id int unsigned not null auto_increment,
name varchar(30) not null, 
description varchar(100) not null, 
price int not null, 
primary key(id)
);

create table rooms (id int unsigned not null auto_increment, name varchar(30) not null,  description varchar(100) not null, 
	capacity int unsigned not null, primary key (id));


create table price_room(
id int unsigned not null auto_increment,
price int not null,
date Date, 
primary key (id));


INSERT INTO bonus (name, description, price) VALUES ('Desayuno','Precio desayuno por persona','10'),('Media Pensión','Precio media pensión por persona','20'),
('Pensión Completa','Precio pensión completa por persona','30'), ('SPA','Precio SPA por persona','10');


INSERT INTO bonus (name, description, price) VALUES ('Desayuno','Precio desayuno por persona',10),('Media Pensión','Precio media pensión por persona',20),
('Pensión Completa','Precio pensión completa por persona',30), ('SPA','Precio SPA por persona',10),
('Desayuno + SPA','Precio desayno, más SPA por persona',15),('Media Pensión + SPA','Precio media pensión, más SPA por persona',25),
('Pensión Completa + SPA','Precio pensión completa, más SPA por persona',35);



INSERT INTO rooms (name, description, capacity) VALUES ('Individual','Habitación individual',1), ('Doble','Habitación doble',2), 
('Triple','Habitación triple',3), ('Junior Suit','Habitación doble con salón',2), ('Suit','Habitación con dos camas dobles y salón',4);


INSERT INTO rooms (name, description, capacity) VALUES ('Suit','Habitación con dos camas dobles y salón',4), ('Suit','Habitación con dos camas dobles y salón',4),
('Suit','Habitación con dos camas dobles y salón',4),('Suit','Habitación con dos camas dobles y salón',4),('Suit','Habitación con dos camas dobles y salón',4),
('Suit','Habitación con dos camas dobles y salón',4),('Suit','Habitación con dos camas dobles y salón',4),('Suit','Habitación con dos camas dobles y salón',4),
('Suit','Habitación con dos camas dobles y salón',4),('Suit','Habitación con dos camas dobles y salón',4),('Suit','Habitación con dos camas dobles y salón',4);


INSERT INTO price_room (price, date) VALUES (15, '2018-03-01') ,(15, '2017-09-01'),(10, '2017-12-01'), (20,'2018-06-01');

UPDATE TABLE rooms SET free = 1 WHERE id = (SELECT * FROM (SELECT id FROM rooms ORDER BY RAND() LIMIT 68);


UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 1;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 2;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 3;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 4;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 5;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 11;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 21;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 31;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 41;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 51;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 13;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 24;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 35;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 45;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 55;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 13;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 23;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 33;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 43;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 53;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 14;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 24;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 34;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 44;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 54;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 16;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 26;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 36;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 46;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 56;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 17;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 27;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 37;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 47;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 57;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 71;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 72;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 73;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 74;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 75;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 61;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 62;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 63;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 64;
UPDATE `rooms` SET `free` = b'1' WHERE `rooms`.`id` = 65;



create table busy_room(
id int unsigned not null auto_increment,
datein Date,
dateout Date, 
idRoom int unsigned,
primary key (id));


INSERT INTO busy_room (datein, dateout, idRoom) VALUES ('2017-11-01','2017-11-01',2),('2017-11-01','2017-11-01',3),
('2017-11-01','2017-11-10',4),
('2017-11-01','2017-11-10',5),('2017-11-01','2017-11-10',6),('2017-11-01','2017-11-10',7),('2017-11-01','2017-11-10',8),('2017-11-01','2017-11-10',9),
('2017-11-01','2017-11-10',10),('2017-11-01','2017-11-10',40),('2017-11-01','2017-11-10',41),('2017-11-01','2017-11-10',42),('2017-11-01','2017-11-10',43),
('2017-11-01','2017-11-10',44),('2017-11-01','2017-11-10',45),('2017-11-01','2017-11-10',46),('2017-11-01','2017-11-10',47),('2017-11-01','2017-11-10',48),
('2017-11-01','2017-11-10',49),('2017-11-01','2017-11-10',50),('2017-11-01','2017-11-10',51),('2017-11-01','2017-11-10',52),('2017-11-01','2017-11-10',53),
('2017-11-01','2017-11-10',54),('2017-11-01','2017-11-10',55),('2017-11-01','2017-11-10',56),('2017-11-01','2017-11-10',57),('2017-11-01','2017-11-10',58),
('2017-11-01','2017-11-10',59),('2017-11-01','2017-11-10',60),('2017-11-01','2017-11-10',61),('2017-11-01','2017-11-10',62),('2017-11-01','2017-11-10',63),
('2017-11-01','2017-11-10',64),('2017-11-01','2017-11-10',65),('2017-11-01','2017-11-10',66),('2017-11-01','2017-11-10',67),('2017-11-01','2017-11-10',68),
('2017-11-01','2017-11-10',69),('2017-11-01','2017-11-10',70);


INSERT INTO busy_room (datein, dateout, idRoom) VALUES ('2017-11-11','2017-11-20',11),('2017-11-01','2017-11-10',12),('2017-11-01','2017-11-10',13),
('2017-11-11','2017-11-20',14),('2017-11-01','2017-11-10',15),('2017-11-01','2017-11-10',16),('2017-11-01','2017-11-10',17),('2017-11-01','2017-11-10',18),
('2017-11-11','2017-11-20',19),('2017-11-01','2017-11-10',20),('2017-11-01','2017-11-10',21),('2017-11-01','2017-11-10',22),('2017-11-01','2017-11-10',23),
('2017-11-11','2017-11-20',24),('2017-11-01','2017-11-10',25),('2017-11-01','2017-11-10',26),('2017-11-01','2017-11-10',27),('2017-11-01','2017-11-10',28),
('2017-11-11','2017-11-20',29),('2017-11-01','2017-11-10',30),('2017-11-01','2017-11-10',65),('2017-11-01','2017-11-10',66),('2017-11-01','2017-11-10',67);


INSERT INTO busy_room (datein, dateout, idRoom) VALUES 
('2017-11-11','2017-11-20',68),('2017-11-01','2017-11-10',69),('2017-11-01','2017-11-10',70),('2017-11-01','2017-11-10',71),('2017-11-01','2017-11-10',72),
('2017-11-11','2017-11-20',73),('2017-11-01','2017-11-10',74),('2017-11-01','2017-11-10',75),('2017-11-01','2017-11-10',76),('2017-11-01','2017-11-10',77),
('2017-11-11','2017-11-20',78),('2017-11-01','2017-11-10',79),('2017-11-01','2017-11-10',80),('2017-11-01','2017-11-10',81),('2017-11-01','2017-11-10',44),
('2017-11-21','2017-11-30',20),('2017-11-21','2017-11-30',21),('2017-11-21','2017-11-30',22),('2017-11-21','2017-11-30',23),('2017-11-21','2017-11-30',24);

INSERT INTO busy_room (datein, dateout, idRoom) VALUES 
('2017-11-21','2017-11-30',25),('2017-11-21','2017-11-30',26),('2017-11-21','2017-11-30',27),('2017-11-21','2017-11-30',28),('2017-11-21','2017-11-30',29),
('2017-11-21','2017-11-30',30),('2017-11-21','2017-11-30',31),('2017-11-21','2017-11-30',32),('2017-11-21','2017-11-30',33),('2017-11-21','2017-11-30',34),
('2017-11-21','2017-11-30',35),('2017-11-21','2017-11-30',36),('2017-11-21','2017-11-30',37),('2017-11-21','2017-11-30',38),('2017-11-21','2017-11-30',39),
('2017-11-21','2017-11-30',40),('2017-11-21','2017-11-30',41),('2017-11-21','2017-11-30',42),('2017-11-21','2017-11-30',43),('2017-11-21','2017-11-30',44),
('2017-11-21','2017-11-30',45),('2017-11-21','2017-11-30',46),('2017-11-21','2017-11-30',47),('2017-11-21','2017-11-30',48),('2017-11-21','2017-11-30',49),
('2017-11-21','2017-11-30',50),('2017-11-21','2017-11-30',70),('2017-11-21','2017-11-30',71),('2017-11-21','2017-11-30',1),('2017-11-21','2017-11-30',2),
('2017-11-21','2017-11-30',3),('2017-11-21','2017-11-30',6),('2017-11-21','2017-11-30',7),('2017-11-21','2017-11-30',8),('2017-11-21','2017-11-30',9);


SELECT * FROM rooms WHERE idRoom NOT IN (SELECT idRoom FROM busy_room WHERE (datein BETWEEN ('$datein') and ('$dateout')) OR (dateout BETWEEN ('$datein') and ('$dateout')));


Select * from rooms where not exists (select idRoom from busy_room where idRoom = id);

ALTER TABLE nombre_Tabla ADD FOREIGN KEY (idRoom) REFRENCES rooms (id);


 Select * from rooms where rooms.id not in (select busy_room.idRoom from busy_room 
 	WHERE (datein BETWEEN ('2018-11-10') and ('2018-11-20')) OR (dateout BETWEEN ('2017-11-10') and ('2017-11-20')));



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


















