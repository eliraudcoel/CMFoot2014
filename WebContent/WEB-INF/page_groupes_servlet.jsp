<%@page import="Modeles.Groupe"%>
<%@page import="java.util.ArrayList"%>
<%@ include file="header.jsp"  %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<h2>Appel de la Base de Données par une Servlet</h2>
<div class="col-xs-12">
	<table class="table table-bordered table-hover table-condensed">
		<tr>
			<td>code groupe</td>
			<td>code pays</td>
			<td>Drapeau</td>
			<td>Nom pays</td>
		</tr>
		<%
			ArrayList<Groupe> array_groupe = (ArrayList<Groupe>) request.getAttribute("groupes");
				if(array_groupe.isEmpty())
			System.out.println("null");
				System.out.println(array_groupe.size());
				for(Groupe groupe : array_groupe) {
		%>
		    <tr>
		    <td><%=groupe.getCodeGroupe()%></td>
		    <td><%=groupe.getCodePays()%></td>
		    <td><img src="<%=groupe.getDrapeau()%>"></img></td>
		    <td><%=groupe.getNomPays()%></td>
		<%}%>
	</table>
</div>
<%@ include file="footer.jsp"  %>