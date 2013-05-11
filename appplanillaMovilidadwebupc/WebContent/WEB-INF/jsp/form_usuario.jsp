<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="height: 280px; "><p align="justify">
<ha>  MANTENIMIENTO DE USUARIO  </ha>

</p><form name="f1" action="usuario_procesar.html" method="post" onsubmit="return valida();" style="height: 366px; ">
		<table style="height: 345px; width: 748px; ">
			
			
			<tr>
				<td style="width: 357px; ">NOMBRES</td>
				<td><input name="txtA"></td>
			</tr>
			<tr>
				<td>PATERNO</td>
				<td><input name="txtB" /></td>

			</tr>
			<tr>
				<td>MATERNO</td>
				<td><input name="txtC"></td>
			</tr>
			<tr>
				<td>SEXO</td>
				<td><select name="genero" style="width: 153px;">
						<option value="1">MASCULINO</option>
						<option value="2">FEMENINO</option>
						</select></td>
			</tr>
						<tr>
				<td>TIPO DOCUMENTO DE IDENTIDAD</td>
				<td><select name="tipodocu" style="width: 153px;">
						<option value="1">DNI</option>
						<option value="2">CE</option>
						</select></td>
			</tr>
			<tr>
				<td>N° DOCUMENTO IDENTIDAD</td>
				<td><input name="txtD"></td>
			</tr>
						<tr>
				<td>CORREO ELECTRONICO</td>
				<td><input name="txtE"></td>
			</tr>
						<tr>
				<td>CELULAR</td>
				<td><input name="txtF"></td>
			</tr>
			<tr>
				<td>CONTRASEÑA</td>
				<td><input name="txtG"></td>
			</tr>
						<tr>
				<td>TIPO USUARIO</td>
				<td><input name="txtH"></td>
			</tr>
						<tr>
				<td>CENTRO DE FORMACION</td>
				<td><input name="txtI"></td>
			</tr>
			
		</table><input type="submit" value="Registrar Usuario">
	</form>

</body>
</html>