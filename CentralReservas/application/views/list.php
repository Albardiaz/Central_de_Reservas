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
	<div style="margin-top: 100px;" align="center" id="container">
		<h1>Listado de precion total por habitación con y sin extras entre dos fechas.</h1>
		<div class="container">
			<div class="table-responsive">          
  				<table class="table">
    			<thead>
			      <tr>
			        <th>Tipo Habitación</th>
			        <th>Capacidad</th>
			        <th>Extra</th>
			        <th>Precio</th>
			      </tr>
			    </thead>
			    <tbody>
			<?php 	
				foreach($Rooms as $room) { 		
					echo ("<tr>");
					echo ("<td>".$room['Name']."</td>");				
					echo ("<td>".$room['Capacity']."</td>");
					echo ("<td>".$room['Bonu']."</td>");				
					echo ("<td>".$room['Price']."</td>");
					echo ("</tr>");
				}
			?>	
			</tbody>		
		</div>
	</div>
</body>
</html>