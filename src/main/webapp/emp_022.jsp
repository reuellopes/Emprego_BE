<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.Vagas" %>
<%
Integer iv = Integer.parseInt(request.getParameter("idvg"));
Vagas v = new Vagas();
v.setIdvaga_cc(iv);
v.Excluir();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<div>Exclusão de Vaga de Emprego</div>
<br><br>
<div>Vaga <%=iv%> Excluída</div>
<br><br>
<div>
<form action="index.jsp" method="get">
<input type="submit" value="Voltar">
</form>
</div>
</body>
</html>