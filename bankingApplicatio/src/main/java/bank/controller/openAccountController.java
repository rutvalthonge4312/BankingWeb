package bank.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bank.doa.InsertDataToQury;
import bank.model.dataSetter;

/**
 * Servlet implementation class openAccountController
 */
@WebServlet("/openAccountController")
public class openAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public openAccountController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String name=request.getParameter("name");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		int amount=Integer.parseInt(request.getParameter("amount"));
		PrintWriter pw=response.getWriter();
		String account_type=request.getParameter("accoutType");
		
		dataSetter data=new dataSetter(name, username, password, amount,account_type);
		System.out.println("HI");
		try {
			PreparedStatement ps;
			InsertDataToQury in=new InsertDataToQury();
			ps= in.insertData(data);
			if(ps.executeUpdate()>0) {
				System.out.println(data.getAccount_type());
				System.out.println("Data Added!");
				ps.close();
				 HttpSession session=request.getSession();
				 session.setAttribute("data",data);
				 response.sendRedirect("UserDashBoard.jsp");
				
			}
			else {
				pw.print(false);
				ps.close();
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
