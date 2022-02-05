<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.Vagas" %>
<%
Integer iv = Integer.parseInt(request.getParameter("idvg"));
String dc = request.getParameter("dsc");
String ro = request.getParameter("rob");
String rd = request.getParameter("rde");
String rex = request.getParameter("rem");
// converte string valor para float
String vx = rex;
vx = vx.replace(".","");
vx = vx.replace(",",".");
float vr = Float.parseFloat(vx);
Integer vg = Integer.parseInt(request.getParameter("vag"));
String be = request.getParameter("ben");
String lt = request.getParameter("ltr");
//---- Back-End -----------------------
Vagas v = new Vagas();
v.setIdvaga_cc(iv);
v.setDescricao_cc(dc);
v.setReq_obrigatorios_cc(ro);
v.setReq_desejaveis_cc(rd);
v.setRemuneracao_cc(vr);
v.setAberta_cc(vg);
v.setBeneficios_cc(be);
v.setLocal_trabalho_cc(lt);
v.Alterar();
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema de Controle de Vagas de Emprego</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<div>Sistema de Controle de Vagas de Emprego</div> 
<div>Alteração</div> <br>
<div>    
<table>
<tr><td>Id Vaga</td><td style="color:blue"><%=iv%></td></tr>
<tr><td>Descrição</td><td style="color:blue"><%=dc%></td></tr>
<tr><td>Requisitos Obrigatórios</td><td style="color:blue"><%=ro%></td></tr>
<tr><td>Requisitos Desejáveis</td><td style="color:blue"><%=rd%></td></tr>
<tr><td>Remuneração</td><td style="color:blue"><%=rex%></td></tr>
<tr><td>Benefício</td><td style="color:blue"><%=be%></td></tr>
<tr><td>Aberta</td><td style="color:blue"><%=vg%></td></tr>
<tr><td>Local de Trabalho</td><td style="color:blue"><%=lt%></td></tr>
<tr><th colspan=2 style="color:green">Vaga alterada com sucesso.</th></tr>
</table>
</div><br>
<div>
<form action="index.jsp" method="get">
	<input type="submit" value="Voltar">
</form>
</div>
</body>
</html>