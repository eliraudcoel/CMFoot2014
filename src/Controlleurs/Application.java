package Controlleurs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Application
 */
@WebServlet("/Application")
public class Application extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Application() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("action").equals("home")){
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		if(request.getParameter("action").equals("groupes")){
			request.getRequestDispatcher("WEB-INF/page_groupes.jsp").forward(request, response);
		}
		if(request.getParameter("action").equals("matchs")){
			request.getRequestDispatcher("WEB-INF/page_matchs.jsp").forward(request, response);
		}
		if(request.getParameter("action").equals("groupes_servlet")){
			request.getRequestDispatcher("WEB-INF/page_groupes_servlet.jsp").forward(request, response);
		}
		if(request.getParameter("action").equals("matchs_servlet")){
			request.getRequestDispatcher("WEB-INF/page_matchs_servlet.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
