<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/estilos.css" rel="stylesheet" />
<title>Sistema de Gestión de Ideas</title>
</head>
<body>
    <div id="contenedor">
        <%@include file="includes/header.jsp"%>
    	<%--<%@include file="sidebarLeftMain.jsp"%> --%>
        <div id ="content">
	<div id="izquierda">
    <table width="30%" border="1" align="left">
              <tr>
                <th rowspan="3" scope="col">
                <form action="login.html" method="post">
                  <table width="100%" border="1">
                  <tr>
                    <th scope="col">Usuario:</th>
                    <th scope="col"><input type="text" name="txtCorreo" value=""/></th>
                  </tr>
                  <tr>
                    <th>Clave: </th>
                    <th><input type="password" name="txtPassword" value="" style="width: 151px; "/></th>
                  </tr>
                  <tr>
                    <td colspan="2"><input type="submit" value="Iniciar sesión"/></td>
                  </tr>
                </table>
                </form>
                </th>
<!--                 <th scope="col">&nbsp;</th> -->
<!--                 <th scope="col">&nbsp;</th> -->
          </tr>
<!--               <tr> -->
<!--                 <td>&nbsp;</td> -->
<!--                 <td>&nbsp;</td> -->
<!--               </tr> -->
<!--               <tr> -->
                            
<!--               </tr> -->
        </table>
    
<%-- Colocar el mensaje de error --%>

<% String msg = (String)request.getAttribute("mensaje"); 
    if(msg != null){%>
        <%=msg%>
<%}%>
</div>
</div>
<%@include file="includes/footer.jsp"%>
</div>
</body>
</html>
