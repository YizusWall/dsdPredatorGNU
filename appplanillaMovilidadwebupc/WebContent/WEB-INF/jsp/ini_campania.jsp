<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mantenimiento de Campaña</title>
</head>
<body>


<h1>MANTENIMIENTO DE CAMPAÑA</h1>


<form action="<%=request.getContextPath() %>/camp_inicio.html" method="get">

<table border="1">
	<tr>
		<th>Nombre</th>
		<td>
			<input type="text" id="txtnombre" name="txtnombre" size="25" value="${HS_DATOS.HM_BEAN_CAMPANIA.campania}">
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
			<th>Nombre</th>
			<th>Fec. Inicio</th>
			<th>Fec. Fin</th>
			<th>Fec. Creación</th>
			<th>Presup. Planif.</th>
			<th>Presup. Real</th>
			<th>Estado</th>
			<th style="text-align: center;">Opc.</th>
		</tr>
	</thead>
	<tbody>
	
	<c:forEach items="${HS_DATOS.HM_LST_CAMPANIA}" var="lst" varStatus="i">
		<tr>			
			<td>${lst.campania}</td>
			<td>${lst.fec_ini}</td>
			<td>${lst.fec_fin}</td>
			<td>${lst.fec_creacion}</td>
			<td>${lst.pres_plani}</td>
			<td>${lst.pres_real}</td>
			<td>${lst.des_estado}</td>
			<td style="width:150px;">
				<a href="javascript: window.location = 'camp_cargaEditar.html?codigo=${lst.codigo}';">
					Modificar
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