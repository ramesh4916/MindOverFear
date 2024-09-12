package in.rk.backend;

import java.io.IOException;
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

@WebServlet("/regForm")
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String myusername = req.getParameter("username1");
        String myemail = req.getParameter("email1");
        String mypass = req.getParameter("password1");
        String mygender = req.getParameter("gender1");
        String myphone = req.getParameter("phone1");
        String myoccupation =req.getParameter("occupation1");
        String myaddress = req.getParameter("address1");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mind_over_fear", "root", "Adit$123");

            // Check if email already exists
            PreparedStatement checkEmailStmt = con.prepareStatement("SELECT * FROM register WHERE email = ?");
            checkEmailStmt.setString(1, myemail);
            ResultSet rs = checkEmailStmt.executeQuery();

            if (rs.next()) {
                // Email already exists
                req.setAttribute("status", "emailExists");
            } else {
                // Email does not exist, proceed with registration
                PreparedStatement ps = con.prepareStatement("INSERT INTO register (username, email, password, gender, phone, occupation, address) VALUES (?, ?, ?, ?, ?, ?, ?)");
                ps.setString(1, myusername);
                ps.setString(2, myemail);
                ps.setString(3, mypass);
                ps.setString(4, mygender);
                ps.setString(5, myphone);
                ps.setString(6, myoccupation);
                ps.setString(7, myaddress);

                int count = ps.executeUpdate();

                if (count > 0) {
                    req.setAttribute("status", "registerSuccess");
                } else {
                    req.setAttribute("status", "registerFailed");
                }
            }
            RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
            rd.forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("status", "error");
            RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
            rd.forward(req, resp);
        }
    }
}
