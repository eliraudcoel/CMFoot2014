
<!-- DATABASE CONNEXION -->

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException"  %>
<%@ page import="java.sql.Statement" %>

<%!
// mysql driver
String driver = "com.mysql.jdbc.Driver";

// the "url" to our DB, the last part is the name of the DB
String url = "jdbc:mysql://localhost/bd_cmfoot2014";

// the default DB username and password may be the same as your control panel login
String name = "root";
String pass = "";
%>

<%

try
{
	// Test the DB connection by making an empty table
	String sqlListeGroupes = "SELECT g.codeGroupe, p.codePays, p.drapeau FROM  `groupes` AS g, pays AS p WHERE p.codePays = g.codePays";
	Class.forName( driver );
	
	// initialize the Connection, with our DB info ...
	Connection con = DriverManager.getConnection( url, name, pass );
	
	Statement stat = con.createStatement();
	ResultSet listeGroupes = stat.executeQuery( sqlListeGroupes );
	
	while ( listeGroupes.next() ) {
		%>
		<tr>
			<td><% out.println(listeGroupes.getString( "codeGroupe" ));%></td>
		    <td><%out.println(listeGroupes.getString( "codePays" ));%></td>
		    <td><img src="<%out.println(listeGroupes.getString( "drapeau" ));%>"/></td>
	    </tr> 
	    <% 
	}
	
	// close connection
	con.close();
}
catch (SQLException sqle){ 
	out.println("<p> Error opening JDBC, cause:</p> <b> " + sqle + "</b>");
}catch(ClassNotFoundException cnfe){ 
	out.println("<p> Error opening JDBC, cause:</p> <b>" + cnfe + "</b>");
}
%>
