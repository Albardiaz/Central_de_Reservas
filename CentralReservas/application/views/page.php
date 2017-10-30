<?php
defined('BASEPATH') OR exit('No direct script access allowed'); 
?>
<!DOCTYPE html>

<meta charset="utf-8">
<head>
	<meta charset="utf-8">
	<title>Test Spalopia</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" media="screen" title="no title">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div style="margin-top: 100px;" align="center" id="container">
	<h1>Bienvendio a la central de reservas.</h1>
	<br>
	<br>
	<button type="button" class="btn btn-primary" onclick="location.href='<?php echo base_url();?>index.php/Api/find_price_rooms_type_by_date'">Lista de Precios</button>
	<button type="button" class="btn btn-primary" onclick="location.href='<?php echo base_url();?>index.php/Api/find_room_free'">Busca habitaciones libres según atributo free de la tabla rooms.</button>
	<button type="button" class="btn btn-primary" onclick="location.href='<?php echo base_url();?>index.php/Api/find_room_free_by_date'">Buscar habitaciones libres según tabla fechas.</button>
	<button type="button" class="btn btn-success" onclick="location.href='<?php echo base_url();?>index.php/Api/create_reservation'">Crear Reserva</button>
</di>
</body>
</html>