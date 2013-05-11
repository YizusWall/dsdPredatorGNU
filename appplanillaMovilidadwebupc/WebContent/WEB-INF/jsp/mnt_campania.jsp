<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mantenimiento de Campaña</title>
</head>
<body>

<c:if test = "${HS_DATOS.HM_MSG_DESCRIPCION != ''}">

	<script>
		alert("${HS_DATOS.HM_MSG_DESCRIPCION}");	
	</script>

</c:if>


<h1>MANTENIMIENTO DE CAMPAÑA :: EDITAR</h1>


<form action="<%=request.getContextPath() %>/camp_actualizar.html" method="get">

<input type="hidden" name="hddCodigo" id="hddCodigo" value="${HS_DATOS.HM_BEAN_CAMPANIA.codigo}">

<table border="1">
	<tr>
		<th>Campaña</th>
		<td>
			<input type="text" id="txtnombre" name="txtnombre" size="25" value="${HS_DATOS.HM_BEAN_CAMPANIA.campania}" required>
		</td>
	</tr>
	<tr>
		<th>Fecha Inicio</th >
		<td>			
			<input type="text" id="txtFecIni" name="txtFecIni" size="25" value="${HS_DATOS.HM_BEAN_CAMPANIA.fec_ini}" required>			
		</td>
		<th>Fecha Fin</th >
		<td>			
			<input type="text" id="txtFecFin" name="txtFecFin" size="25" value="${HS_DATOS.HM_BEAN_CAMPANIA.fec_fin}" required>
		</td>
	</tr>
	<tr>
		<th>Pres. Planificado</th >
		<td>			
			<input type="text" id="txtPrePla" name="txtPrePla" size="25" value="${HS_DATOS.HM_BEAN_CAMPANIA.pres_plani}" required>			
		</td>
		<th>Presupuesto Real</th >
		<td>			
			<input type="text" id="txtPreReal" name="txtPreReal" size="25" value="${HS_DATOS.HM_BEAN_CAMPANIA.pres_real}" required>
		</td>
	</tr>
	<tr>
		<th>Objetivo</th>
		<td colspan="3">
			<textarea rows="5" id="txaObj" name="txaObj" maxlength="250" required>${HS_DATOS.HM_BEAN_CAMPANIA.objetivo}</textarea>
		</td>
	</tr>
	<tr>
		<th>Observaciones</th>
		<td colspan="3">
			<textarea rows="5" id="txaObs" name="txaObs" maxlength="250">${HS_DATOS.HM_BEAN_CAMPANIA.observacion}</textarea>
		</td>
	</tr>
	<tr>
		<th>Lita Mkt</th>
		<td colspan="3">
			<select id="cmbMkt" name="cmbMkt">
				<option value="1" <c:if test = "${HS_DATOS.HM_BEAN_CAMPANIA.lista == 1}">selected="selected"</c:if> >Lista_0001</option>		
				<option value="2" <c:if test = "${HS_DATOS.HM_BEAN_CAMPANIA.lista == 2}">selected="selected"</c:if>>Lista_0002</option>
			</select>		
		</td>
	</tr>
	<tr>
		<th>Estado</th>
		<td colspan="3">
			<select id="cmbEstado" name="cmbEstado">
				<option value="1" <c:if test = "${HS_DATOS.HM_BEAN_CAMPANIA.estado == 1}">selected="selected"</c:if>>Activo</option>			
				<option value="2" <c:if test = "${HS_DATOS.HM_BEAN_CAMPANIA.estado == 2}">selected="selected"</c:if>>Inactivo</option>
			</select>		
		</td>
	</tr>
	<tr>
		<td align="right" colspan="4">
			<button type="submit">Grabar</button>			
			<button type="button" onclick="javascript: window.location = 'camp_inicio.html';">Salir</button>			
		</td>
	</tr>
</table>

</form>







</body>
</html>