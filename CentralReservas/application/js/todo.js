$('#buttonCalcular').click(function(){
	var datein = $('#datein').val;
	var dateout	= $('#dateout').val;
	var seleccionado = $('#myRadioButton[]').val;

	$.ajax({
		type:"POST",
		url: "index.php/Api/calculate_price_room_by_date",
		data: {
			'datein': datein,
			'dateout': dateout,
			'seleccionado': seleccionado
		},
		success:function($data);
	})

});