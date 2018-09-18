<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link href="resources/css/main.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1 class="display-1 text-center mb-4">Registrar mascota</h1>
		<div class="row">
    		<div class="col-12">
        		<div class="text-center">
					<a href="mascotas" id="mascotas" class="btn btn-success btn-lg mb-5">Ver lista mascotas</a>
		      	</div>
    		</div>
		</div>
		<form:form id="formulario" method="post" action="save">
			<div class="form-group d-none">
    			<form:input type="number" placeholder="id" class="form-control" id="id" path="id"/>
  			</div>
			<div class="form-group">
				<label for="nombremascota">Nombre de la mascota:</label>
    			<form:input type="text" placeholder="nombre de la mascota" class="form-control" id="nombremascota" path="nombreAnimal"/>
  			</div>
  			<div class="form-group">
  				<label for="nombredueno">Nombre del dueño:</label>
    			<form:input type="text" placeholder="nombre del dueño" class="form-control" id="nombredueno" path="nombreDueno"/>
  			</div>
  			<div class="form-group">
  				<label for="especie">Especie:</label>
    			<form:input type="text" placeholder="especie" class="form-control" id="especie" path="especie"/>
  			</div>
  			<div class="form-group">
  				<label for="raze">Raza:</label>
    			<form:input type="text" placeholder="raza" class="form-control" id="raza" path="raza"/>
  			</div>
  			<div class="form-group">
    			<form:input type="text" placeholder="color" class="form-control" id="color" path="color"/>
  			</div>
  			<div class="form-group">
  				<label for="edadAprox">Edad aproximada</label>
    			<form:input type="float" placeholder="edad aproximada" class="form-control" id="edadAprox" path="edadAprox"/>
  			</div>
			<span>Sexo</span><br/>
  			<div class="form-check-inline">
  				<label class="form-check-label" for="macho">
  					<form:radiobutton path="sexo" value="macho" label="Macho" class="form-check-input" id="macho" checked="checked" />
  				</label>
  				<label class="form-check-label ml-3" for="hembra">
            		<form:radiobutton path="sexo" value="hembra" label="Hembra" class="form-check-input" id="hembra" />
            	</label>
			</div>
			<br/><span>Estado reproductivo</span><br/>
			<div class="form-check-inline">
  				<label class="form-check-label" for="fertil">
  					<form:radiobutton path="estadoReproductivo" value="fertil" label="fertil" class="form-check-input" id="fertil" checked="checked" />
  				</label>
  				<label class="form-check-label ml-3" for="infertil">
            		<form:radiobutton path="estadoReproductivo" value="infertil" label = "infertil" class="form-check-input" id="infertil" />
            	</label>
			</div>
			<div class="form-group">
  				<label for="tiempoestadia">Tiempo de estadía en horas</label>
    			<form:input type="number" placeholder="tiempo de estadía" class="form-control" id="tiempoestadia" path="tiempoEstadia"/>
  			</div>
				<br />
				<input type="submit" value="Enviar" id="submit" class="btn btn-primary btn-lg" />
				<button type="reset" class="btn btn-danger btn-lg">Limpiar</button>
				<a href="mascotas" id="mascotas" class="btn btn-success btn-lg">Ver lista mascotas</a>
		</form:form>
	</div>
</body>
</html>