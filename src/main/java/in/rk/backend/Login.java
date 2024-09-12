package in.rk.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginForm")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        String myemail = req.getParameter("email1");
        String mypass = req.getParameter("password1");
        RequestDispatcher dispatcher;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mind_over_fear","root", "Adit$123");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM register WHERE email=? AND password=?");
            ps.setString(1, myemail);
            ps.setString(2, mypass);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                HttpSession session = req.getSession();
                session.setAttribute("session_name", rs.getString("username"));
                session.setAttribute("session_email", rs.getString("email"));
                session.setAttribute("session_gender", rs.getString("gender"));
                session.setAttribute("session_phone", rs.getString("phone"));
                session.setAttribute("session_occupation", rs.getString("occupation"));
                session.setAttribute("session_address", rs.getString("address"));

                // Redirect to profile page
                dispatcher = req.getRequestDispatcher("/profile.jsp");
                dispatcher.forward(req, resp);
            } else {
                // Set status attribute for login failure
                req.setAttribute("status", "loginFailed");
                dispatcher = req.getRequestDispatcher("/login.jsp");
                dispatcher.forward(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exception and show error message
            req.setAttribute("status", "error");
            dispatcher = req.getRequestDispatcher("/login.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
