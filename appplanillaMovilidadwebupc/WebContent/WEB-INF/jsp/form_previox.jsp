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
		
		
					
		if (a=="0"){
			
			alert("Valor no valido debe ser positivo");
			return false;
			

			
		}
		
	}	

</script>

</head>
<body>
<h3>Calculadora básica</h3>

	<form name = "f1" action = "previo_procesarx.html" method="post" onsubmit = "return valida();">


		<table>
			<tr>
				<td>a:</td>
				<td><input name = "txtA"/></td>
			</tr>
			<tr>
				<td>b:</td>
				<td><input name = "txtB"/></td>
			</tr>
			<tr>
				<td>c:</td>
				<td><input name = "txtC"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit"> </td>
			</tr>
		</table>
	</form>




<c:forEach items = "${LISTADO}" var="n">
  
${n.valor}
${n.moneda} <br/>


 </c:forEach>




	
	</body>
</html>