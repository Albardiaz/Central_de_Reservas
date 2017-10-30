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
  	<script type="text/javascript">
  		function changeValue()
    	{
        	
        	var total = document.getElementById('total').value;
        	console.log("Total " + total);
        	var sb = document.getElementById('bonu');
			var bonu = sb.options[sb.selectedIndex].value;
			var sp = document.getElementById('people');
        	var people = sp.options[sp.selectedIndex].value;
        	//var bonu = document.getElementById('bonu')[0].value;
        	console.log("Price bonu --> " + bonu);
        	console.log("Price peopple --> " + people);
        	var res = parseInt(total)+parseInt(bonu)+parseInt(people);
        	document.getElementById('total').value = res;
        	
    	}
  	</script>
</head>
<body>
		<div style="margin-top: 100px; margin-left: 50px; margin-right: 50px;" align="center" id="container">
			<h1>Calculo coste habitación según extra y personas adicionales.</h1>
			<br>
			<br>
			<div class="container">
				<div>
					<h2>
					<?php
						echo ("<label>Tipo habitación: </label>");
						echo ("<span>".$room['Name']."</span>");
					?>
					</h2>
				</div>
				<div>
					<h2>
					<?php
					echo ("<label>Capacidad:</label>");					
					echo ("<span>".$room['Capacity']."</span>");
					?>
					</h2>
				</div>
				<div>
					<h2>
					<?php
					echo ("<label>Precio sin extras:</label>");
					echo ("<span id=\"price\">".$room['Price']."</span>");
					?>
					</h2>
				</div>
			</div>			
				<select id="bonu" class="selectpicker">
				<?php
				foreach($bonus as $bonu) {
				  	echo ("<option value=".$bonu['Price'].">".$bonu['Name']."</option>");  				
					
				}
				?>
				</select>
				<select id="people" class="selectpicker">
				  	<option id="Adul" value="10">1 Adulto</option>
	  				<option id="Child" value="5">1 Niño</option>
	  				<option id="T_child" value="10">2 Niños</option>
	  				<option id="Adul_child" value="15">1 Adulto y 1 niño</option>
				</select>
				<br>
				<br>			
				<br>
				<div style="margin-top: 150px; class="form-group">
					<button id="myBtn" onclick="changeValue()"> Calaculo total </button>	
					<input id="total" type="text" value="<?php echo($room['Price']) ?>" disabled>	    
	    		</div>	
		</div>
	</body>	
</html>