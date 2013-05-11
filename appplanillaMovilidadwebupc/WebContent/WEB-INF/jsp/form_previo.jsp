<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script> 
	function valida(){
		var a = document.f1.txtA.value;			
		if (a==""){
			
			alert("Ingrese Operador 1");
			return false;
		}
		return true;
	}	

</script>

</head>
<body>
<h3>Pronostico</h3>

	<form name = "f1" action = "previo_procesar.html" method="post" onsubmit = "return valida();">

	


		<table>
			<tr>
				<td>Aeropuerto:</td>
				
				<td> <select name = "Combo1" style="width: 291px; ">
				
				
				 <option value="1">Jorge Chavez</option>
    			<option value="2">Velazco Astete</option>
    			<option value="3">Torres Bellon</option> </select>
				</td>
				
				
			</tr>
			<tr>
				<td>Incidente:</td>
				<td><select name = "Combo2"style="width: 290px; ">
				<option value = "1"> Lluvias</option>
				<option value="2"> Granizo</option>
				<option value="3"> Neblina</option> </select>
				</td>
			</tr>
			<tr>
				<td>Pronostico:</td>
				<td>
				<input name = "TextA"> 
				<input name = "TextB">
				</td>
			</tr>
			<tr>
				<td>Info Adicional</td>
				<td> <textarea name="Info"> </textarea><input type="submit" value="Guardar"> </td>
			</tr>
		</table>
	</form>




	
	</body>
</html>