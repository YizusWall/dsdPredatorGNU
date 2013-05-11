<%@page import="appideaswebupc.modelo.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="appideaswebupc.dao.*"%>
<%@page import="java.util.Collection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro Reuniones</title>
<style type="text/css">
@import url("css/calendar-blue.css");
</style>
<link href="css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="js/calendar.js"></script>
<script type="text/javascript" src="js/calendar-es.js"></script>
<script type="text/javascript" src="js/calendar-setup.js"></script>
			<%
				IdeaDAO ideaDAO = new IdeaDAO();
				UsuarioDAO usuarioDAO = new UsuarioDAO();
				ReunionDAO reunionDAO = new ReunionDAO();
				Collection userCombo1, userCombo2, userCombo3;
				Iterator iterador1, iterador2, iterador3;
				int id = 1;
			%>
</head>

<body>

	<h3><p align="center">Registro de Reuniones</p></h3>

	<form name="frr" action="registrar.html" method="post">
		<table align="center">

			<tr>
				<td>Asesor :</td>
				<td><select name="idasesor">
						<option value="0">--- Seleccione un Asesor ---</option>
						<%
							userCombo1 = ideaDAO.listar_docente();
							iterador1 = userCombo1.iterator();
							while (iterador1.hasNext()) {
								Usuario u = (Usuario) iterador1.next();
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
			<tr>
				<td>Estudiante :</td>

				<td><select name="idestudiante" id="idestudiante">
						<option value="0">--- Seleccione un Alumno ---</option>
						<%
							userCombo2 = usuarioDAO.listar();
							iterador2 = userCombo2.iterator();
							while (iterador2.hasNext()) {
								Usuario u = (Usuario) iterador2.next();
						%>
						<option value="<%=u.getIdUsuario()%>">
							<%=u.getNombres()%> <%=u.getPaterno()%> <%=u.getMaterno()%>
						</option>
						<%
							}
						%>
				</select></td>

			</tr>
			<tr>
				<td>Idea :</td>
				<td>
					<select name="ididea">
						<option value="0">--- Seleccione una Idea ---</option>
						<%
							userCombo3 = reunionDAO.ListaIdeas();
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
				</select>
				</td>
			</tr>
			<tr>
				<td>Fecha :</td>
				<td><input type="text" name="date" id="fecha"
					readonly="readonly" /> <img src="img/img.gif" id="selector"
					style="cursor: pointer; border: 1px solid red;"
					title="Date selector" onmouseover="this.style.background='red';"
					onmouseout="this.style.background=''" /></td>

			</tr>
			<tr>
				<td>Observaciones :</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td><textarea name="observaciones"
						style="height: 169px; width: 270px;"></textarea></td>

			</tr>
			<tr>
				<td>Calificación :</td>
				<td><select name="calificacion" style="width: 115px;">
						<option value="Bueno">Bueno
						<option value="Medio">Medio
						<option value="Mejorar">Mejorar
				</select></td>
			</tr>
			<tr>
				<td><input type="submit" value="Registrar"></td>
				<td></td>
			</tr>
		</table>
	</form>
	<script type="text/javascript">
		window.onload = function() {
			Calendar.setup({
				inputField : "fecha",
				ifFormat : "%Y/%m/%d",
				button : "selector"
			});
		}
	</script>
</body>
</html>