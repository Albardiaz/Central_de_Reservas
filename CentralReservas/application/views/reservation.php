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
  	<scritp src="https://bootstrap-datepicker.readthedocs.io/en/latest/#bootstrap-datepicker"></scritp>
</head>
<body>

<div style="margin-top: 100px; margin-right: 500px; margin-left: 500px; margin-bottom: 100px;" align="center" id="container">
	<h1>Crear nueva reserva.</h1>
	<br>
	<br>
	<form action="" role="form" class="form-horizontal" method="POST">
			<div align="left" class="form-group">
				<label>Nombre del cliente: </label>
				<input type="text" class="form-control" id="client_name">
				<label>Comentarios: </label>
				<input type="text" class="form-control" id="coments">
				<div style="margin-top:20px; margin-bottom: 20px;" align="center">
					<label>Fecha de entrada: </label>
					<input id="datein" class="datepicker" data-date-format="mm/dd/yyyy">
					<label>Fecha de salida: </label>
					<input id="dateout" class="datepicker" data-date-format="mm/dd/yyyy">
				</div>
				<label>Tipo habitación: </label>
				<input id="room" type="text" class="form-control" id="type_room">
				<label>Extras: </label>
				<input id="bonu" type="text" class="form-control" id="bonus">
				<div style="padding: 30px;" align="center" class="form-group">
					<button type="submit" class="btn btn-primary">Crear Reserva</button>		    
				</div>
		</div>
	</form>
</di>
</body>
</html>