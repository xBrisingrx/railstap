$(document).on 'change', '#vehiculo_marca_vehiculo_id', -> 
	console.log 'on change'
	$.getScript '/modelo_vehiculos/ajax_modelos?marca_id='+$(this).val()