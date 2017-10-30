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
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script>
  		$( function() {
    		$( "#datepicker,#datepicker2" ).datepicker({ dateFormat: 'yy-mm-dd' });
  		} );
  </script>
</head>
<body>
	<div style="margin-top: 100px;" align="center" id="container">
		<h1>Introduzca rango de fechas.</h1>
		<br>
		<br>
		<form action="list_free_room" role="form" class="form-horizontal" method="POST">	
			<div class="form-group">	 	
				<label>Fecha de entrada: </label>
				<input style="margin-right: 50px;"  type="text" id="datepicker" name="datein">
				<label>Fecha de salida: </label>
				<input type="text" id="datepicker2" name="dateout">
			</div>
			<div class="form-group">
	    		<button type="submit" class="btn btn-default">Aceptar</button>		    
	    	</div>
		</form>
	</div>
</body>
</html>