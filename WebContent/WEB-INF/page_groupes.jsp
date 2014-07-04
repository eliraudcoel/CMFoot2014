<%@page import="Modeles.Groupe"%>
<%@page import="java.util.ArrayList"%>
<%@ include file="header.jsp"  %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<%
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://127.0.0.1/bd_cmfoot2014";
String utilisateur="root";
String motDePasse = "";
Connection connexion = null;
try{
	Class.forName(driver);
	connexion = DriverManager.getConnection(url, utilisateur,motDePasse);
	
} catch (Exception e) {
	System.out.println("problème de connection");
	System.out.println(e.getMessage());
	
}
%>
<h2>Appel de la Base de Données directement dans la page</h2>
<div class="col-xs-12">
	<table class="table table-bordered table-hover table-condensed">
		<tr>
			<td>code groupe</td>
			<td>code pays</td>
			<td>Drapeau</td>
			<td>Nom pays</td>
		</tr>
		<% 
		Statement statement = connexion.createStatement();
		ResultSet resultat = statement.executeQuery ("SELECT codeGroupe, groupes.codePays, NompaysF, drapeau FROM groupes JOIN pays ON groupes.codePays = pays.codePays");
		while(resultat.next() ) {
		%>
		<tr>
			<td><%=resultat.getString("codeGroupe")%></td>
			<td><%=resultat.getString("groupes.codePays")%></td>
			<td><img src="<%=resultat.getString("drapeau")%>"/></td>
			<td><%=resultat.getString("nomPaysF")%></td>
		</tr>
		<% } %>
	</table>
</div>
<%@ include file="footer.jsp"  %>