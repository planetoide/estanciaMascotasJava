<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet"> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
       <div class="container">
		<h1 class="display-1 text-center mb-5 text-danger">Editar datos de mascota</h1>
		<h1 class="d-none">${command}</h1>
		<form:form id="formulario" method="post" action="actualizar">
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
  					<form:radiobutton path="sexo" value="macho" label="Macho" class="form-check-input" id="macho"/>
  				</label>
  				<label class="form-check-label ml-3" for="hembra">
            		<form:radiobutton path="sexo" value="hembra" label="Hembra" class="form-check-input" id="hembra" />
            	</label>
			</div>
			<br/><span>Estado reproductivo</span><br/>
			<div class="form-check-inline">
  				<label class="form-check-label" for="fertil">
  					<form:radiobutton path="estadoReproductivo" value="fertil" label="fertil" class="form-check-input" id="fertil"/>
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
				<input type="submit" value="Actualizar" id="submit" class="btn btn-primary" />
				<a href="mascotas" id="mascotas" class="btn btn-success">Ver lista mascotas</a>
		</form:form>
	</div>
</body>
</html>