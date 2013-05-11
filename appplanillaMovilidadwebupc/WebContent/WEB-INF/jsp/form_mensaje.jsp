<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="appideaswebupc.modelo.Usuario"%>
<%@page import="appideaswebupc.dao.UsuarioDAO"%>
<%@page import="appideaswebupc.dao.InvitacionDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mantenimiento de Campaña</title>
</head>
<body>


<h1>PARTICIPAR EN LA DISCUSION Y VOTACION DE IDEAS</h1>


<form action="<%=request.getContextPath() %>/form_mensaje.html" method="get" style="height: 496px; width: 784px">

<table border="1" style="height: 475px; width: 699px">
	<tr>
		<th>Idea</th>
		<td>
		${HS_DATOS.titulo}
		</td>
	</tr>
	<tr>
		<th>Propietario de la idea</th >
		<td>
			${HS_DATOS.palabraClave1}
		</td>
	</tr>
		<tr>
		<th>Descripcion de la Idea</th>
		<td style="width: 419px; ">
			${HS_DATOS.descripcion}
		</td>
	</tr>
	<tr>
	
	</tr>
    <tr>
			<th>Comentar la Idea</th >
	</tr>
	<tr>
		<td align="right" colspan="2"><textarea style="height: 132px; width: 666px; "></textarea>
				</td>
	</tr>
		
</table>
<tr>
		<td align="right" colspan="2">
			<button type="submit">Agregar</button>
			<button type="button" onclick="javascript:fn_limpiarBsq();">Salir</button>			
		</td>
	</tr>
	<th>Votacion</th >
	<td><select tipo="estado" >
	<option value="1">1 ESTRELLA</option>
    <option value="2">2 ESTRELLA</option>
    <option value="3">3 ESTRELLA</option>
    <option value="4">4 ESTRELLA</option>
    <option value="5">5 ESTRELLA</option>
    </select></td>
    
    <tr>
    
    <td>Invitado :</td>
    <%
	InvitacionDAO invitacionDAO = new InvitacionDAO();
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	Collection userCombo2;
	Iterator iterador2;
%>
    
				<td><select name="idinvitado" style="width: 225px;" onchange="xxxxx.html">
						<option value="0">--- Seleccione un Invitado ---</option>
						<%
							userCombo2 = usuarioDAO.listar();
							iterador2 = userCombo2.iterator();
		
							while (iterador2.hasNext()) {
								Usuario u = (Usuario) iterador2.next();
						%>
						<option value="<%=u.getIdUsuario()%>">
							<%=u.getNombres()%>
							<%=u.getPaterno()%>
							<%=u.getMaterno()%>
						</option>
						<%
							}
						%>
				</select></td>
	</tr>

</form>


</body>
</html>