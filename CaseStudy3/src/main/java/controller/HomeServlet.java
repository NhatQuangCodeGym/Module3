package controller;

import DAO.AccountDAO;
import model.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "Home", value = "/home")
public class HomeServlet extends HttpServlet {
    private final AccountDAO accountDAO = new AccountDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding(StandardCharsets.UTF_8.toString());
        response.setCharacterEncoding(StandardCharsets.UTF_8.toString());
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("acc");
        String password = (String) session.getAttribute("pass");

        Account account = accountDAO.selectAccount(username, password);
        if (account == null) {
            response.sendRedirect("/admin");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/general-structure.jsp");
        dispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
