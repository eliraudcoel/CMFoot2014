package Controlleurs;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modeles.Groupe;

/**
 * Servlet implementation class SrvGroupes
 */
@WebServlet("/SrvGroupes")
public class SrvGroupes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connexion = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SrvGroupes() {
    	String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://127.0.0.1/bd_cmfoot2014";
		String utilisateur="root";
		String motDePasse = "";
		try{
			Class.forName(driver);
			connexion = DriverManager.getConnection(url, utilisateur,motDePasse);
			
		} catch (Exception e) {
			System.out.println("problème de connexion");
			System.out.println(e.getMessage());
		}
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Statement statement;
		List<Groupe> array_groupes = new ArrayList<Groupe>();
		
		try {
			statement = connexion.createStatement();
		
		ResultSet resultat = statement.executeQuery( "SELECT codeGroupe, groupes.codePays, NompaysF, drapeau FROM groupes JOIN pays ON groupes.codePays = pays.codePays");
		/* Récupération des données du résultat de la requête de lecture */
		while( resultat.next() ) {
			Groupe groupes = new Groupe();
			groupes.setCodeGroupe(resultat.getString( "codeGroupe" ));
			groupes.setCodePays(resultat.getString( "groupes.codePays" ));
			groupes.setNomPays(resultat.getString( "NompaysF" ));
			groupes.setDrapeau(resultat.getString( "drapeau" ));
			array_groupes.add(groupes);
			
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("groupes", array_groupes);
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/page_groupes_servlet.jsp").forward(request, response);
	}

}
