<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Ideas</title>
</head>
<body>


<h1>Listado de Ideas</h1>


<form action="" method="get">

<table border="1">
	<tr>
		<th>Titulo</th>
		<td>
			<input type="text" id="txtnombre" name="txtnombre" size="25" value="${HS_DATOS.HM_BEAN_CAMPANIA.titulo}">
		</td>
	</tr>
	<tr>
		<th>Fecha de creación</th >
		<td>
			De
			<input type="date" id="txtFecIni" name="txtFecIni" size="25" value="${HS_DATOS.HM_BEAN_CAMPANIA.fec_ini}">
			A
			<input type="date" id="txtFecFin" name="txtFecFin" size="25" value="${HS_DATOS.HM_BEAN_CAMPANIA.fec_fin}">
		</td>
	</tr>
	<tr>
		<td align="right" colspan="2">
			<button type="submit">Filtrar</button>
			<button type="button" onclick="javascript:fn_nuevaIdea();">Ingresar</button>
			<button type="button" onclick="javascript:fn_limpiarBsq();">Salir</button>			
		</td>
	</tr>
</table>

</form>

<br/>

<table border="1" width="100%">
	<thead>
		<tr>
			<th>Id</th>
			<th>Titulo</th>
			<th>Descripcion</th>
			<th>Fec. Creacion</th>
			<th>Estado</th>
			<th>id Usuario.</th>
			<th>id Asesor</th>
			<th style="text-align: center;">Ver Idea.</th>
		</tr>
	</thead>
	<tbody>
	
	<c:forEach items="${HS_DATOS.HM_LST_Idea}" var="lst" varStatus="i">
		<tr>			
			<td>${lst.idIdea}</td>
			<td>${lst.titulo}</td>
			<td>${lst.descripcion}</td>
			<td>${lst.fecha}</td>
			<td>${lst.estado}</td>
			<td>${lst.idusuario}</td>
			<td>${lst.asesor}</td>
			<td style="width:200px;">
				<a href="javascript: window.location = 'mensaje.html?codigo=${lst.idIdea}';">
					Agregar Comentario
				</a>				
			</td>
		</tr>
	</c:forEach>
			
	</tbody>
</table>





<c:if test = "${HS_DATOS.HM_MSG_DESCRIPCION != ''}">

	<script>
		alert("Se actualizaron correctamente los datos.");	
	</script>

</c:if>



</body>
</html>