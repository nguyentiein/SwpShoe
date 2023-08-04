package Controller;

import Model.Admin;
import Model.Staff;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "Logincontroller", value = "/login")
public class Logincontroller extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        String err = "";
        User u = new User(username, password);
        Staff s = new Staff(username, password);
        User user = u.userLogin(username, password);
        Staff staff = s.staffLogin(username, password);


        Admin a= new Admin (username,password);
        Admin admin = a.adminLogin ( username,password );

        if (user != null) {
            req.getSession().setAttribute("username", user);
            resp.sendRedirect("home");
        } else if (admin!=null) {

            req.getSession().setAttribute("admin", admin);

            resp.sendRedirect("statics");
        }

        else if (staff != null) {
            req.getSession().setAttribute("staff", staff);
            if(staff.getRole ()==1){
                resp.sendRedirect("DashBoard.jsp");
            }else{
                resp.sendRedirect("activeAccount");
            }

        }
        else {
            err = "Invalid credentials";
            req.setAttribute("err", err);
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }
    }

}
