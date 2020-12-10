<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css" />
<link rel="stylesheet" href="css/noti.css"/>

<title>CIBERTEC - Freddy Fernandez</title>
</head>
<body>
<jsp:include page="intranetCabecera.jsp" />

<div class="container" style="width: 90%; margin-top: 4%">&nbsp;<br>&nbsp;<br>&nbsp;<br>

    <c:if test="${MENSAJE !=null}">
	<div class="alert alert-warning alert-dismissible fade show" role="alert" id="success-alert">
	  <strong>Sistema:</strong> ${MENSAJE}
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    <span aria-hidden="true">&times;</span>
	  </button>
	</div>
	</c:if>
	<c:remove var="MENSAJE"/>
    
	<h3>REGISTRO - CITA</h3>		
	<form id="id_form"  action="saveCita" class="form-horizontal" method="post" data-toggle="validator">
			<div class="panel-group" id="steps">
				<div class="panel panel-default">
					<div class="panel-heading">Selección de Especialidad</div>
						<div class="panel-body">
							<div class="form-group col-md-4">
								<div class="col-lg-4">
									<button type="button" id="id_btnMedico" data-toggle='modal' class='btn btn-primary' style="width: 170px">BUSCAR ESPECIALIDAD</button>
									<input type="hidden" name="idMedico" id="id_medico_id" class="form-control" value="-1"/>
								</div>
							</div> 
							
							
							
							<div class="form-group col-md-4">
								<label class="col-lg-2 control-label">Nombre Medico</label>
								<div class="col-lg-8">
									<input type="text" id="id_medico_nombre"  class="form-control"	readonly="readonly"/>
								</div>
							</div>
							
							<div class="form-group  col-md-4" >
								<label class="col-lg-2 control-label">Especialidad</label>
								<div class="col-lg-8" >
									<input type="text"  id="id_especialidad_descripcion" class="form-control" readonly="readonly"/>
								</div>
							</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">Selección del Horario</div>
						<div class="panel-body">
							<div class="form-group  col-md-4" >
								<div class="col-lg-2">
									<button type="button" id="id_btnProducto" data-toggle='modal' class='btn btn-primary' style="width: 170px">BUSCA HORARIO</button>
									<input type="hidden"  id="id_horario_id" class="form-control" value="-1"/>									
								</div>
							</div>
							<div class="form-group  col-md-4">
								<label class="col-lg-3 control-label">Hora Inicio</label>
								<div class="col-lg-8">
									<input type="text" name="horaInicio" id="id_hora_inicio" class="form-control" readonly="readonly"/>
								</div>
							</div>
							<div class="form-group  col-md-4">
								<label class="col-lg-3 control-label">Hora Fin</label>
								<div class="col-lg-8">
									<input type="text" name="horaFin" id="id_hora_fin" class="form-control" readonly="readonly"/>
								</div>
							</div>
							<div class="form-group  col-md-4">
								<label class="col-lg-3 control-label">Dia</label>
								<div class="col-lg-8">
									<input type="text" id="id_dia" class="form-control" readonly="readonly"/>
								</div>
							</div>
								<div class="form-group  col-md-4">
								<label class="col-lg-3 control-label">Fecha</label>
								<div class="col-lg-8">
									<input type="text" name="fechaHorario" id="id_fecha_horario" class="form-control" readonly="readonly"/>
								</div>
							</div>		
							
													
						
						</div>
				</div>
			</div>
			
			
			<div class="panel panel-default">
		
						<div class="panel-body">
							<div class="form-group">
								<div class="col-lg-9 col-lg-offset-3">
		
									<button type="submit"  id="id_btnRegistrar" class="btn btn-primary" style="width: 170px">REGISTRA CITA</button>
									
								</div>
							</div>
							
					</div>
				</div>


<!-- El formulario de busqueda de Cliente (Modal) -->

  	 <div class="modal fade" id="idBuscaMedico" >
			<div class="modal-dialog" style="width: 60%">

				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Busqueda de Medico</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						    <div class="panel-group" id="steps">
		                        <div class="panel panel-default">
											<div class="form-group">
													<label class="col-lg-3 control-label">
														Medico 
													</label>   
													<div class="col-lg-5">
														<input id="id_txtMedico" class="form-control"  type="text" />
													</div>
											</div>
											<div class="form-group">
												<div class="col-lg-12">
												<table id="id_table_cliente" class="table table-striped table-bordered">
														<thead>
															<tr>
																<th style="width: 15%">IdMedico</th>
																<th style="width: 40%">Nombre</th>
																<th style="width: 35%">Especialidad</th>
																<th style="width: 10%"></th>
															</tr>
														</thead>
														<tbody>

														</tbody>				
												</table>
												</div>
											</div>
			                        </div>
		                    </div>
					</div>
			</div>
			</div>
		</div>

<!-- El formulario de busqueda de Producto (Modal) -->

  	 <div class="modal fade" id="idBuscaHorario" >
			<div class="modal-dialog" style="width: 60%">

				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Busqueda de Horario</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						    <div class="panel-group" id="steps">
		                        <div class="panel panel-default">
											<div class="form-group">
													<label class="col-lg-3 control-label">
														Horario 
													</label>   
													<div class="col-lg-5">
														<input id="id_txtDia" class="form-control" type="text" />
													</div>
											</div>
											<div class="form-group">
												<div class="col-lg-12">
												<table id="id_table_producto" class="table table-striped table-bordered" >
														<thead>
															<tr>
																<th style="width: 15%">Id</th>
																<th style="width: 25%">HoraInicio</th>
																<th style="width: 15%">HoraFin</th>
																<th style="width: 15%">Dia</th>
																<th style="width: 10%">Fecha</th>
																<th style="width: 10%"></th>
															</tr>
														</thead>
														<tbody>

														</tbody>				
												</table>
												</div>
											</div>
		                        </div>
		                    </div>
				</div>
			</div>
			</div>
		</div>
		
		
	<!-- Modal Mensaje -->	
		  <div class="modal fade" id="idMensaje" >
			<div class="modal-dialog" style="width: 60%">

				<div class="modal-content">
				<div class="modal-header" style="padding: 20px 20px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Mensaje</h4>
				</div>
				<div  id="idMensajeTexto" class="modal-body" style="padding: 30px 30px;align-content: center;">
					
			    </div>
			</div>
			</div>
		</div>
		
</form>
</div>




<script type="text/javascript">


	//Al pulsar el botón cliente
	$("#id_btnMedico").click(function (){
		muestraMedicos();
		$("#idBuscaMedico").modal("show");
	});

	//Al pulsar el botón producto
	$("#id_btnProducto").click(function (){
		muestraHorario();
		$("#idBuscaHorario").modal("show");
	});
	
	//Al escribir en la caja de texto del cliente
	$("#id_txtMedico").keyup( function (e){
		muestraMedico();
	});
	
	//Al escribir en la caja de texto del cliente
	$("#id_txtDia").keyup( function (e){
		muestraHorario();
	});
	
	//Se anula el enter
	$(document).on("keypress", "form", function(event) { 
	    return event.keyCode != 13;
	});

	
	//Al pulsar el botón registrar
	$("#id_btnRegistrar").click(function (){
		var var_cli = $("#id_medico_id").val();
		var var_nom = $("#id_medico_nombre").val();
		var var_idhorario = $("#id_horario_id").val();
		
	
		
		if (var_cli == "-1"){
			$("#idMensajeTexto").text("Seleccione un medico");
			$("#idMensaje").modal("show");
		}else if (var_idhorario == "-1"){
			$("#idMensajeTexto").text("Seleccione un horario");
			$("#idMensaje").modal("show");
		}else{

			var jsonParam = {"idMedico":var_cli,"nombre":var_nom_com};

			$.ajax({
				url:  'saveCita',
				type: 'POST',
				dataType:'json',
				data: jsonParam,
				success:function(data){
					if(data.texto != "-1"){
						console.log(data.texto);
						$("#idMensajeTexto").html(data.texto);
						$("#idMensaje").modal("show");
						$("#id_table_boleta_body").empty();
						$("#id_medico_id").val("-1");
						$("#id_medico_nombre").val("");
						$("#id_medico_apellido").val("");
					}else
						swal("Error al agregar la Boleta","","error");
						return false;
					},
				error: function (jqXhr) { 
					swal("Error en la conexión","","error");
				}
		   });	
			   
		}
	});
	
	
	function muestraMedico(){
		var var_medico = $("#id_txtMedico").val();

		//limpiar la tabla
		$("#id_table_cliente tbody").empty();
		
		//Se añade los clientes a la tabla
		$.getJSON("cargaMedico/"+var_medico, function (data){
			$.each(data, function(index, item){
				$('#id_table_cliente').append("<tr><td>" +item.idMedico + "</td><td>" +item.nombre + "</td><td>" +item.especialidad.descripcion + "</td><td><button type='button' class='btn btn-default' aria-label='Left Align' onclick=\"f_seleccione_medico('"+ item.idMedico+"','"+ item.nombre+"','"+ item.especialidad.descripcion+"');\" ><span class='glyphicon glyphicon-ok' aria-hidden='true'></span></button></td></tr>");
			});
		});

		

		
	}

	function muestraMedicos(){
		//limpiar la tabla
		$("#id_table_cliente tbody").empty();
		//Se añade los clientes a la tabla
		$.getJSON("cargaMedicos/", function (data){
			$.each(data, function(index, item){
				$('#id_table_cliente').append("<tr><td>" +item.idMedico + "</td><td>" +item.nombre + "</td><td>" +item.especialidad.descripcion + "</td><td><button type='button' class='btn btn-default' aria-label='Left Align' onclick=\"f_seleccione_medico('"+ item.idMedico+"','"+ item.nombre+"','"+ item.especialidad.descripcion+"');\" ><span class='glyphicon glyphicon-ok' aria-hidden='true'></span></button></td></tr>");
			});
		});
	}

	function muestraHorario(){
		var var_id_medico = $("#id_medico_id").val();
		//limpiar la tabla
		$("#id_table_producto tbody").empty();
		
		//Se añade los clientes a la tabla
		$.getJSON("cargaHorario/"+var_id_medico, function (data){
			$.each(data, function(index, item){
				$('#id_table_producto').append("<tr><td>" +item.idHorario + "</td><td>" +item.horaInicio + "</td><td>" +item.horaFin + "</td><td>" +item.dia +"</td><td>" +item.fechaHorario + "</td><td><button type='button' class='btn btn-default' aria-label='Left Align' onclick=\"f_seleccione_horario('"+ item.idHorario+"','"+ item.horaInicio+"','"+ item.horaFin+"','"+ item.dia+"','"+ item.fechaHorario+"');\" ><span class='glyphicon glyphicon-ok' aria-hidden='true'></span></button></td></tr>");
			});
		});
	}

	//Al pulsar selecciona cliente
	function f_seleccione_medico(id,nombre,descripcion){
		$("#id_medico_id").val(id);
		$("#id_medico_nombre").val(nombre);
		$("#id_especialidad_descripcion").val(descripcion);
		$("#idBuscaMedico").modal("hide");
	}
	
	//Al pulsar selecciona producto
	function f_seleccione_horario(id,i,f,d,fh){
		$("#id_horario_id").val(id);
		$("#id_hora_inicio").val(i);
		$("#id_hora_fin").val(f);
		$("#id_dia").val(d);
		$("#id_fecha_horario").val(fh);
		$("#idBuscaHorario").modal("hide");
	}
		
	//Solo numeros en caja de texto
	function validarSoloNumerosEnteros(e) { // 1
		tecla = (document.all) ? e.keyCode : e.which; // 2
		if (tecla == 8)	return true; // 3
		patron = /[0-9]/;// Solo acepta números
		te = String.fromCharCode(tecla); // 5
		return patron.test(te); // 6
	}
	

	
</script>


</body>
</html>



