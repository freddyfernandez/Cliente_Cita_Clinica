<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Ejemplos de CIBERTEC - Freddy Fernandez </title>
</head>
<body>

<div class="container">
<h1>Registrate </h1>

	<c:if test="${sessionScope.MENSAJE != null}">
		<div class="alert alert-success fade in" id="success-alert">
		 <a href="#" class="close" data-dismiss="alert">&times;</a>
		 <strong>${sessionScope.MENSAJE}</strong>
		</div>
	</c:if>
	<c:remove var="MENSAJE" />

	<form action="insertaCliente" id="id_form" method="post"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombres</label>
				<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_num_hombres">Apellidos </label>
				<input class="form-control" id="id_apellido" name="apellido" placeholder="Ingrese los apellidos" type="text" />
			</div>
			<div class="form-group">
				<label class="control-label" for="id_num_mujeres">Dni</label>
				<input class="form-control" id="id_dni" name="dni" placeholder="Ingrese el número de dni" type="text" maxlength="8"/>
			</div>
			<div class="form-group">
				<label class="control-label" for="id_maxima">Numero Celular</label>
				<input class="form-control" id="id_nrocelular" name="nrocelular" placeholder="Ingrese su numero de celular" type="text" />
			</div>
			<div class="form-group">
				<label class="control-label" for="id_minima">Nombre de Usuario</label>
				<input class="form-control" id="id_login" name="login" placeholder="Ingrese su nombre usuario" type="text" />
			</div>
			
			<div class="form-group">
				<label class="control-label" for="id_minima">Contraseña</label>
				<input class="form-control" id="id_password" name="password" placeholder="Ingrese la contraseña" type="text" />
			</div>
				
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Aceptar</button>
			</div>
	</form>
</div>

<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

<script type="text/javascript">

$('#id_form').bootstrapValidator({
    message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
    	nombre: {
    		selector : '#id_nombre',
            validators: {
                notEmpty: {
                    message: 'El nombre es un campo obligatorio'
                },
                stringLength :{
                	message:'El nombre es de 5 a 100 caracteres',
                	min : 5,
                	max : 100
                }
            }
        },
        numHombres: {
    		selector : '#id_num_hombres',
            validators: {
                notEmpty: {
                    message: 'El número de hombres es un campo obligatorio'
                },
                lessThan: {
	                value: 15,
	                inclusive: true,
	                message: 'La edad es menor a 15'
	            },
	            greaterThan: {
	                value: 0,
	                inclusive: true,
	                message: 'La edad es mayor a 0'
	            }
            }
        },
        numMujeres: {
    		selector : '#id_num_mujeres',
            validators: {
            	notEmpty: {
                    message: 'El número de mujeres es un campo obligatorio'
                },
                lessThan: {
	                value: 15,
	                inclusive: true,
	                message: 'La edad es menor a 15'
	            },
	            greaterThan: {
	                value: 0,
	                inclusive: true,
	                message: 'La edad es mayor a 0'
	            }
            }
        },
        edadMaxima: {
    		selector : '#id_maxima',
            validators: {
            	notEmpty: {
                    message: 'La edad máxima es un campo obligatorio'
                },
                lessThan: {
	                value: 35,
	                inclusive: true,
	                message: 'La edad es menor a 35'
	            },
	            greaterThan: {
	                value: 18,
	                inclusive: true,
	                message: 'La edad es mayor a 18'
	            }
            }
        },
        edadMinima: {
    		selector : '#id_minima',
            validators: {
            	notEmpty: {
                    message: 'La edad mínima es un campo obligatorio'
                },
                lessThan: {
	                value: 35,
	                inclusive: true,
	                message: 'La edad es menor a 35'
	            },
	            greaterThan: {
	                value: 18,
	                inclusive: true,
	                message: 'La edad es mayor a 18'
	            }
            }
        },
        deporte: {
    		selector : '#id_deporte',
            validators: {
            	notEmpty: {
                    message: 'El deporte un campo obligatorio'
                },
            }
        },
    	
    }   
});
</script>

<script type="text/javascript">
$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

</body>
</html>




