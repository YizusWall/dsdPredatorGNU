<%@page import="appideaswebupc.dao.InvitacionDAO"%>
<%@page import="appideaswebupc.modelo.Usuario"%>
<%@page import="appideaswebupc.dao.UsuarioDAO"%>
<%@page import="appideaswebupc.modelo.Idea"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="appideaswebupc.dao.IdeaDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet">
<title>Invitar a que Discuten y Voten</title>
<%
	InvitacionDAO invitacionDAO = new InvitacionDAO();
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	Collection userCombo2,userCombo3;
	Iterator iterador2,iterador3;
%>
</head>
<body>
	<h3>
		<p align="center">Invitar a que Discuten y Voten</p>
	</h3>

	<form name="fi" action="invitar.html" method="post">
		<table align="center">
			<tr>
				<td>Idea :</td>
				<td><select name="ididea" style="width: 225px;">
						<option value="0">--- Seleccione una Idea ---</option>
						<%
							userCombo3 = invitacionDAO.Invitacion_ListaIdeas();
							iterador3 = userCombo3.iterator();
							while (iterador3.hasNext()) {
								Idea u = (Idea) iterador3.next();
						%>
						<option value="<%=u.getIdIdea()%>">
							<%=u.getDescripcion()%>
							<%=u.getEstado()%>
						</option>
						<%
							}
						%>
				</select></td>
			</tr>
			<tr>
				<td>Actualizar estado de idea:</td>
				<td><select name="estadoidea" style="width: 225px;">
						<option value="0">--- Seleccione una Estado ---
						<option value="B">BORRADOR
						<option value="D">DISCUSIÓN
						<option value="V">VOTACIÓN
						<option value="A">APROBADO
						<option value="R">RECHAZADO
				</select></td>
			</tr>
			<tr>
				<td>Invitado :</td>
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
			<!--  <tr>
				<td>Votar idea :</td>
				<td><select name="votacion" style="width: 222px; ">
				<option value="-1">--- Seleccione una Estado ---
				<option value="1"> Muy Mal
				<option value="2"> Mal
				<option value="3"> Regular
				<option value="4"> Bien
				<option value="5"> Muy bien
				</select></td>
			</tr>
			-->
			<tr>
				<td></td>
				<td><input type="submit" value="Invitar" style="width: 84px;"></td>
			</tr>
		</table>
	</form>
</body>
</html>