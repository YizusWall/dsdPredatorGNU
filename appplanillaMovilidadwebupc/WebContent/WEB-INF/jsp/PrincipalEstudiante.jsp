<%-- 
    Document   : PrincipalEstudiante
    Created on : 14/10/2012, 12:50:19 PM
    Author     : jdev5
--%>
<%@page import="appideaswebupc.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" />
        <title>JSP Page</title>
    </head>
<body>
	<div id="contenedor">

		<div id="cabecera">
			<div id="logo">
				<img src="<%= request.getContextPath() %>/img/upc_logo.gif" alt="Logo" />
			</div>

			<div id="menu">
				<ul>
					<li><a href="#" title="">Home</a></li>
					<li><a href="#" title="">Quienes somos</a></li>
					<li><a href="#" title="">Servicios</a></li>
					<li><a href="#" title="">Contactos</a></li>
					<li><a href="<%= request.getContextPath() %>/Index.html" title="">Intranet</a></li>
				</ul>
			</div>

		</div>

		<div id="content">
			<div id="izquierda">
				<div class="titulo">Bienvenido Estudiante</div>

				<div class="detalle">
				
				<% 
				Usuario objUsuario = (Usuario)session.getAttribute("usuario");
				
				%>
				IdUsuario : <%= session.getAttribute("idusuario")  %> <br />
				IddeOBJ: <%= objUsuario.getIdUsuario()  %> <br />
				Nombre : <%= objUsuario.getNombres()  %> <br />
				Correo : <%= objUsuario.getCorreo()  %> <br />
				Clave : <%= objUsuario.getContrasena()  %>	<br />				
				
				<a href="<%=request.getContextPath()%>/MantIdea.html?id=<%= objUsuario.getIdUsuario() %>&modo=0">
					Mis Ideas
				</a>                                                    <br />
                                
                <a href="<%=request.getContextPath()%>/invitacion.html">
					Registrar invitaciones
				</a>                                                    <br />
                                <mt:holaMundo nombre="Duke"/>
                                        
				</div>
			</div>
		</div>

		<div id="pie">
			<div id="pie1">Copyright © 2012 by UPC</div>
			<div id="pie2">Quienes somos | Portafolio | Servicios |
				Contacto</div>
		</div>
	</div>
</body>
</html>
