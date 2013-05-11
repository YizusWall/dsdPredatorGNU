<%-- 
    Document   : categorias_editar.jsp
    Created on : 09/10/2012, 12:54:22 AM
    Author     : jdev5
--%>
<%@page import="appideaswebupc.negocio.MantenimientoIdeas"%>
<%@page import="appideaswebupc.dao.InvitacionDAO"%>
<%@page import="appideaswebupc.modelo.Usuario"%>
<%@page import="appideaswebupc.dao.UsuarioDAO"%>
<%@page import="appideaswebupc.dao.IdeaDAO"%>
<%@page import="appideaswebupc.modelo.Idea"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
    <head>
    <%
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	MantenimientoIdeas asesor = new MantenimientoIdeas(); 
	Collection userCombo2,userCombo3;
	Iterator iterador2,iterador3;
    %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" />
        <title>JSP Page</title>
    </head>
<body>
    <div id="contenedor">    
        <%@include file="includes/header.jsp"%>
<%--     	<%@include file="includes/menuAdmin.jsp"%> --%>
        <div id ="content">
	<div id="izquierda">
	<h3>Asignar Asesor</h3>
	<form  action="guardarModificacionAsesor.html" method="post">
		<table>
			<tr>
				<td>Id Idea:</td>
				<td><input id="id" name="ididea" value="${requestScope.EDIT.idIdea}"/></td>
			</tr>
			<tr>
				<td>Titulo:</td>
				<td><input id="txttitulo" name="txtTitulo" value="${requestScope.EDIT.titulo}"/></td>
			</tr>  
			<tr>
				<td>Asesor :</td>
				<td><select name="idasesor" style="width: 225px;" onchange="xxxxx.html">
						<option value="0">--- Seleccione un Asesor ---</option>
						<%
							userCombo2 = asesor.listar_docente();
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
			<tr>
				<td colspan="2"><input type="submit" value="Guardar" name="btnRegistrar" /></td>
			</tr>
		</table>
	</form>
	</div>
        </div>
	<!-- end of center content -->
	<%--<%@include file="sidebarRightMain.jsp"%> --%>
	<%@include file="includes/footer.jsp"%>
    </div>        	
</body>
</html>