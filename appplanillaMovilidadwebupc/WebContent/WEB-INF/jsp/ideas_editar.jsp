<%-- 
    Document   : categorias_editar.jsp
    Created on : 09/10/2012, 12:54:22 AM
    Author     : jdev5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
    <head>
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
	<h3>Mantenimiento de Ideas</h3>
	<form  action="guardarModificacionIdea.html" method="post">
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
				<td>Descripcion:</td>
				<td><input id="txtdescripcion" name="txtDescripcion" value="${requestScope.EDIT.descripcion}"/></td>
			</tr>
			<tr>
				<td>Palabra Clave 1:</td>
				<td><input id="txtpc1" name="txtpc1" value="${requestScope.EDIT.palabraClave1}"/></td>
			</tr>
			<tr>
				<td>Palabra Clave 2:</td>
				<td><input id="txtpc2" name="txtpc2" value="${requestScope.EDIT.palabraClave2}"/></td>
			</tr>
			<tr>
				<td>Palabra Clave 3:</td>
				<td><input id="txtpc3" name="txtpc3" value="${requestScope.EDIT.palabraClave3}"/></td>
			</tr>
			<tr>
				<td>Palabra Clave 4:</td>
				<td><input id="txtpc4" name="txtpc4" value="${requestScope.EDIT.palabraClave4}"/></td>
			</tr>
			<tr>
				<td>Archivo: </td>
				<td><input id="archivo" name="archivo" value="${requestScope.EDIT.archivo}" /></td>
			</tr>
			<tr><td>Estado: </td><td><select name="estado" ><option value="B">BORRADOR</option>
                                                    <option value="D">DISCUSION</option>
                                                    <option value="V">VOTACION</option>
                                                    </select></td></tr>  
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