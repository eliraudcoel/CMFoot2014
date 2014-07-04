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
<div class="col-xs-12">
	<table class="table table-bordered table-hover table-condensed">
		<tr>
			<td>code groupe</td>
			<td>Date du match</td>
			<td>heure du match</td>
			<td>Nom pays 1</td>
			<td>Drapeau pays 1</td>
			<td>Buts pays 1</td>
			<td>Nom pays 2</td>
			<td>Drapeau pays 2</td>
			<td>Buts pays 2</td>
		</tr>
		<% 
		Statement statement = connexion.createStatement();
		ResultSet resultat = statement.executeQuery ("SELECT codeGroupe, dateMatch, heureMatch, p1.nomPaysF, p1.drapeau, butsPays1, p2.nomPaysF, p2.drapeau, butsPays2 FROM matchs AS m JOIN pays AS p1 ON m.codePays1 = p1.codePays JOIN pays AS p2 ON m.codePays2 = p2.codePays ORDER BY codeGroupe ASC , dateMatch ASC , heureMatch ASC");
		while(resultat.next() ) {
		%>
		<tr>
			<td><%=resultat.getString("codeGroupe")%></td>
			<td><%=resultat.getString("dateMatch")%></td>
			<td><%=resultat.getString("heureMatch")%></td>
			<td><%=resultat.getString("p1.nomPaysF")%></td>
			<td><img src="<%=resultat.getString("p1.drapeau")%>"/></td>
			<td><%=resultat.getString("butsPays1")%></td>
			<td><%=resultat.getString("p2.nomPaysF")%></td>
			<td><img src="<%=resultat.getString("p2.drapeau")%>"/></td>
			<td><%=resultat.getString("butsPays2")%></td>
		</tr>
		<% } %>
	</table>
</div>
<%@ include file="footer.jsp"  %>


