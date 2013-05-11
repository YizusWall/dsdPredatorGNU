<%-- 
    Document   : Mantenimiento de Idea
    Created on : 12/02/2013, 12:18:23 AM
    Author     : Miguel Flores
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" />
        <!-- Importacion de javascript y hojas de estilos JQuery-->
        <link type="text/css" href="<%=request.getContextPath()%>/css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />	
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-ui-1.8.18.custom.min.js"></script>

        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/messages_es.js"></script>

        <script type="text/javascript" src="<%=request.getContextPath()%>/js/ajax.js"></script> 
        
        <title>Registro de Nuevo Emprendedor</title>
    </head>
    <script language="javascript">
    $(document).ready(function(){
        // Habilitar validacion JQuery para el formulario
        $("#emprendedor").validate();
    });
    
    $(function(){
        //DatePicker - Calendario para fechas
        $("#fechanacimiento").datepicker({dateFormat:'dd/mm/yy'});
    });        
        
    </script>
    <body>
    <div id="contenedor">
        <%@include file="includes/header.jsp"%>
    	<%--<%@include file="sidebarLeftMain.jsp"%> --%>
        <div id ="content">
	<div id="izquierda">
        <h3>Registro de Nueva Idea</h3>
        <form id="idea" method="post" action="registrarIdea.html">
            <table>
<!--                 <tr><td>Id: </td><td><input type="text" name="ididea" class="required" maxlength="120"/ disabled></td></tr> -->
                <tr><td>Titulo: </td><td><input type="text" name="titulo" class="required" maxlength="120"/></td></tr>
                <tr><td>Descripcion: </td><td><input type="text" name="descripcion" class="required" maxlength="60"/></td></tr>
                <tr><td>Palabra Clave 1: </td><td><input type="text" name="pc1" class="required" maxlength="60"/></td></tr>
                <tr><td>Palabra Clave 2: </td><td><input type="text" name="pc2" class="required" maxlength="60"/></td></tr>
                <tr><td>Palabra Clave 3: </td><td><input type="text" name="pc3" class="required" maxlength="60"/></td></tr>
                <tr><td>Palabra Clave 4: </td><td><input type="text" name="pc4" class="required" maxlength="60"/></td></tr>
                <tr><td>Archivo: </td><td><input type="file" name="archivo" id="myfile" class="required"/></td></tr>
                <tr><td>Estado: </td><td><select name="estado" disabled><option value="1">BORRADOR</option>
                                                    <option value="2">DISCUSION</option>
                                                    <option value="3">VOTACION</option>
                                                    </select></td></tr>  
                <tr><td></td><td><input type="submit" value="Registrar Idea" /></td></tr>
                <tr>
				<td class="mensaje" colspan="2">
                                    <% String msg = (String)request.getAttribute("mensaje"); 
                                        if(msg != null){%>
                                        <%=msg%>
                                    <%}%>
                                </td>
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
