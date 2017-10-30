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
  	<script src="../js/todo.js"></script>
</head>
<body>
		<div style="margin-top: 100px; margin-left: 50px; margin-right: 50px;" align="center" id="container">
		<h1>Listado de habitaciones libres entres dos fechas.</h1>
		<br>
		<br>
		<form action="calculate_price_room_by_date/?datein=<?php echo $datein;?>&dateout=<?php echo $dateout; ?>" role="form" class="form-horizontal" method="POST">
			<div class="form-group">	 	
				<div class="table-responsive">          
  				<table class="table">
    			<thead>
			      <tr>
			        <th>Tipo Habitación</th>
			        <th>Capacidad</th>
			        <th>Description</th>
			        <th>Precio</th>
			        <th>Seleccion habitación</th>
			        <th>Calculo precio habitación</th>		
			      </tr>
			    </thead>
			    <tbody>
				<?php 	
				echo ("<input type=\"text\" name=\"datein\" id=\"datein\" value=".$datein.">");
				echo ("<input type=\"text\" name=\"dateout\" id=\"dateout\" value=".$dateout.">");
				$name = 0;
				foreach($Rooms as $room) { 		
					echo ("<tr>");					
					echo ("<td>".$room['Name']."</td>");
					echo ("<td>".$room['Capacity']."</td>");
					echo ("<td>".$room['Description']."</td>");
					echo ("<td>".$room['Price']."</td>");					
					echo ("<td>");
					echo ("<input type=\"radio\" id=\"myRadioButton[]\" name=\"myRadioButton[]\" value=".$name.">");
					echo ("</input>");
					echo ("</td>");
					echo ("<td>");					
					echo ("<div class=\"form-group\"><button type=\"submit\" class=\"btn btn-default\">Calculo precio habitación</button>		    
	    	</div>");	    		    
					echo ("</td>");
					echo ("</tr>");
					$name++;
				}
				?>				
				</tbody>		
			</div>					
		</form>
	</div>
	</body>	
</html>