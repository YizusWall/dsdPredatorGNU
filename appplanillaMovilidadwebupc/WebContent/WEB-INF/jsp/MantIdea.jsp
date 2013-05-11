<%-- 
    Document   : MantIdea
    Created on : 10/02/2013, 11:00:48 PM
    Author     : Miguel Flores
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" />
        <title>Mantenimiento de Ideas</title>
        <script language="javascript">
        function jsBuscar(){
            alert("dmc");
            
            form = document.forms[0]; //document.newEditNotificacion;
			//jsDeshabilitaBotones(document);
            form.action = "MantCategoria.html";
            form.submit();
                        
		/*if(validar()){
			form = document.forms[0]; //document.newEditNotificacion;
			//jsDeshabilitaBotones(document);
			form.action = "grabar.html";
			form.submit();
		}*/
	}
        
        function validar(){
		/*
		
		if(form.notiMensaj.value == ''){
			alert('Ingrese el Mensaje para el correo electrónico de notificación');
			form.notiMensaj.focus();
			return false;
		}
		
			*/
		return true;
	
	}        
    </script>        
    </head>
<body>
    <div id="contenedor">    
        <%@include file="includes/header.jsp"%>
<%--     	<%@include file="includes/menuAdmin.jsp"%> --%>
        <div id ="content">
	<div id="izquierda">
		<h3>Mantenimiento de Ideas</h3>
		<form action="verRegistroIdea.html" method="get">
			<input type="submit" name="btnNuevo" id="btnNuevo" value="Nuevo" />
		</form>
		<table border="1">
			<tr>
				<td>Ididea</td>
				<td>Titulo</td>
				<td>Descripcion</td>
				<td>Estado</td>
				<td>Fechaidea</td>
				<td>Editar</td>
				<td>Eliminar</td>
			</tr>


			<c:forEach items="${requestScope.IDEAS}" var="r" varStatus="i">
				<tr>
					<td width="100">${r.idIdea}</td>
					<td>${r.titulo}</td>
					<td>${r.descripcion}</td>
					<td>${r.estado}</td>
					<td>${r.fecha}</td>
					
					<td align="center"><a
						href="editarIdea.html?id=${r.idIdea}"> <img
							src="img/editar.jpg" alt="" title="" border="0" />
					</a></td>
					<td align="center"><a
						href="eliminarCategoria.html?id=${r.idIdea}"><img
							src="img/delete.gif" alt="" title="" border="0" onclick='return confirm("¿Está seguro de eliminar la categoría seleccionado?");'/></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
        </div>
	<!-- end of center content -->
	<%@include file="includes/footer.jsp"%>
       </div>
</body>
</html>