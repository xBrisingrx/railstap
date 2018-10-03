$("#form-edit").html("<%= j (render 'formEdit') %>");
$('#employee-modal').modal('show');
$("#form-edit").slideDown(350);