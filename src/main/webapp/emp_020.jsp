<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="classes.ConectaBD" %>
<%
try {
		ConectaBD cbd = new ConectaBD();
		Connection conn = cbd.Conectar();
		Statement st = conn.createStatement();
		String sql = "select * from vagas where aberta = 1";
		ResultSet rs = st.executeQuery(sql);
		DecimalFormat df = new DecimalFormat("#,##0.00");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<table>
<caption class="e02">Lista de vagas de emprego em aberto</caption>
<tr class="e01"><th>Id Vaga</th><th>Descrição</th><th>Req.Obrigatórios</th>
<th>Req.Desejáveis</th><th>Remuneração</th><th>Aberta</th>
<th>Benefícios</th><th>Local de Trabalho</th>
<th>Alteração</th><th>Exclusão</th></tr>
	<%
	int alt = 0;
	while(rs.next())
   	{
	if(alt == 0) {%>
			<tr bgcolor=snow class="e01">
			<%alt = 1;} 
		else
			{%>
			<tr bgcolor=ivory class="e01">
				<%alt = 0;}%>
	<td><%=rs.getInt("idvaga")%></td>
	<td><%=rs.getString("descricao")%></td>
	<td><%=rs.getString("req_obrigatorios")%></td>
	<td><%=rs.getString("req_desejaveis")%></td>
	<td style="text-align: right;"><%=df.format(rs.getFloat("remuneracao"))%></td>
	<td style="text-align: center;"><%=rs.getInt("aberta")%></td>
	<td><%=rs.getString("beneficios")%></td>
	<td><%=rs.getString("local_trabalho")%></td>
	<!-- Alteração -->
	<td style="text-align: center;"><a href="emp_021.jsp?idvg=<%=rs.getInt("idvaga")%>">
	<img src="editar15.jpg"></a></td>
	<!-- Exclusão -->
	<td style="text-align: center;">
	<a href="emp_022.jsp?idvg=<%=rs.getInt("idvaga")%>" 
	onclick="return confirm('Confirma Exclusão?');">
	<img src="excluir15.jpg"></a></td>
	</tr>
	<%
	} // fecha while
  	rs.close(); 
	st.close(); 
	conn.close();
} // fecha try
catch(Exception e)
{
   out.println("Ocorreu uma exceção - " + e.getMessage());
}
	%>
<tr><th colspan=10>
<form action="index.jsp" method="get">
<input type="submit" value="Voltar">
</form>
</th></tr>
</table>
</body>
</html>