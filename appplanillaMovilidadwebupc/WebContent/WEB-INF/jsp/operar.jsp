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
<h3>Calculadora básica</h3>

	<form name = "f1" action = "calcular.html" method="post" onsubmit = "return valida();">


		<table>
			<tr>
				<td>Operador1:</td>
				<td><input name = "txtA"/></td>
			</tr>
			<tr>
				<td>Operador2:</td>
				<td><input name = "txtB"/></td>
			</tr>
			<tr>
				<td>Tipo de Operación:</td>
				<td><select name = "operador">
						<option value= "1">Suma
						<option value= "2">Resta
						<option value= "3">Multiplicación
						<option value= "4">División
					</select>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit"> </td>
			</tr>
		</table>
	</form>
	${RES} 
	
	</body>
</html>