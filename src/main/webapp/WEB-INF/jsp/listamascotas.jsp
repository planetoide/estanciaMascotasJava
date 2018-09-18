<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1 class="display-3 mt-2 mb-3">Lista de mascotas <a href="formularioMascota" id="inicio" class="btn btn-primary">Agregar nueva mascota</a></h1>
	
   <table class="table table-striped table-sm">
    <thead class="thead-dark">
	      <tr>
				<th>Id</th>
				<th>Nombre Mascota</th>
				<th>Dueño</th>
				<th>Especie</th>
				<th>Sexo</th>
				<th>Raza</th>
				<th>Color</th>
				<th>edad aproximada</th>
				<th>Fertilidad</th>
				<th>Estadia</th>
				<th>Opciones</th>
		  </tr> 
    </thead>
    <tbody>
      <c:forEach var="mascota" items="${lmascotas}">   
		   	<tr>  
		   		<td>${mascota.id}</td>
		   		<td>${mascota.nombreAnimal}</td>
		   		<td>${mascota.nombreDueno}</td>
		   		<td>${mascota.especie}</td>
		   		<td>${mascota.sexo}</td>
		   		<td>${mascota.raza}</td>
		   		<td>${mascota.color}</td>
		   		<td>${mascota.edadAprox}</td>
		   		<td>${mascota.estadoReproductivo}</td>
		   		<td>${mascota.tiempoEstadia}</td>
		   		<td><a href="${mascota.id}" class="btn btn-primary">Editar</a><a href="deletepet/${mascota.id}" class="btn btn-danger">Eliminar</a></td>	   		
		   	</tr>
		   
	   	</c:forEach>
    </tbody>
  </table>

</div>
</body>
</html>