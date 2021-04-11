package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CookieOven;
import model.GettheWeather;
import model.weatherBean;

/**
 * Servlet implementation class OWservlet
 */
@WebServlet("/OWservlet")
public class OWservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OWservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cityString = request.getParameter("city");
		cityString = cityString.substring(0, 1).toUpperCase() + cityString.substring(1);
		String countryString = request.getParameter("country");
		
		weatherBean wBean = new weatherBean(cityString, countryString);
		
		GettheWeather.getWeather(wBean);
		
		request.setAttribute("wBean", wBean);
		
		response.addCookie(CookieOven.bakeCookie(wBean));
		
		RequestDispatcher rd = request.getRequestDispatcher("showWeather.jsp");
		rd.forward(request, response);
	}
		

}
