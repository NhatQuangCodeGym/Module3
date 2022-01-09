package controller;

import DAO.AccountDAO;
import DAO.InstructorDAO;
import model.Account;
import model.Instructor;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name="InstructorServlet",urlPatterns = "/instructor")
public class InstructorServlet extends HttpServlet {
    private final InstructorDAO instructorDAO = new InstructorDAO();
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
        } else {
            String action = request.getParameter("action");
            if (action == null) {
                action = "";
            }
            try {
                switch (action) {
                    case "create":
                        showCreateInstructor(request, response);
                        break;
                    case "edit":
                        showEditInstructor(request, response);
                        break;
                    case "delete":
                        deleteInstructor(request, response);
                        break;
                    case "info":
                        showInfoInstructor(request, response);
                        break;
                    default:
                        listInstructor(request, response);
                        break;
                }
            } catch (SQLException ex) {
                throw new ServletException(ex);
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding(StandardCharsets.UTF_8.toString());
        response.setCharacterEncoding(StandardCharsets.UTF_8.toString());
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    createInstructor(request, response);
                    break;
                case "edit":
                    updateInstructor(request, response);
                    break;
                case "search":
                    searchInstructor(request, response);
                    break;
                case "delete":
                    deleteInstructor(request, response);
                    break;
//                default:
//                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }


    private void listInstructor(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Instructor> instructorList = instructorDAO.selectAllInstructors();
        System.out.println("list in: "+ instructorList.size());
        System.out.println(instructorList.size());
        String check = request.getParameter("check");
        request.setAttribute("check",check);
        request.setAttribute("list", instructorList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/instructor/instructor.jsp");
        dispatcher.forward(request, response);
    }
    private void showCreateInstructor(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/instructor/create.jsp");
        dispatcher.forward(request, response);
    }
    private void createInstructor(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String nameIns = request.getParameter("name");
        String gender = request.getParameter("gender");
        String mail = request.getParameter("mail");
        String address = request.getParameter("address");
        String phoneNum = request.getParameter("phoneNum");

        if (nameIns.equals("") || gender.equals("") || mail.equals("") || address.equals("") || phoneNum.equals("")) {
            request.setAttribute("message", "Bad or missing input information!");
         showCreateInstructor(request,response);


        } else if (!checkInput.validateName(nameIns)) {
            request.setAttribute("message", "Invalid name value");
            showCreateInstructor(request,response);

        } else if (!checkInput.validateMail(mail)) {
            request.setAttribute("message", "Invalid email value!");
            showCreateInstructor(request,response);

        } else if (!checkInput.validatePhone(phoneNum)) {
            request.setAttribute("message", "Invalid phone number value");
            showCreateInstructor(request,response);

        } else {
            Instructor newInstructor = new Instructor(nameIns,Integer.parseInt(gender), mail, address, phoneNum);
            instructorDAO.insertInstructor(newInstructor);
            showCreateInstructor(request,response);


        }
    }
    private void showEditInstructor(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        Instructor existInstructor = instructorDAO.selectInstructor(id);

        if (existInstructor == null) {
            response.sendRedirect("/error-404.jsp");
        } else {
            request.setAttribute("instructor", existInstructor);
            RequestDispatcher dispatcher = request.getRequestDispatcher("instructor/edit.jsp");
            dispatcher.forward(request, response);
        }
    }
    private void updateInstructor(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String mail = request.getParameter("mail");
        String address = request.getParameter("address");
        String phoneNum = request.getParameter("phoneNum");
        boolean check = false;
        if (name.equals("") || gender.equals("") || mail.equals("") || address.equals("") || phoneNum.equals("")) {
            request.setAttribute("message", "Bad or missing input information!");
            showEditInstructor(request,response);


        } else if (!checkInput.validateName(name)) {
            request.setAttribute("message", "Invalid name value");
            showEditInstructor(request,response);

        } else if (!checkInput.validateMail(mail)) {
            request.setAttribute("message", "Invalid email value!");
            showEditInstructor(request,response);


        } else if (!checkInput.validatePhone(phoneNum)) {
            request.setAttribute("message", "Invalid phone number value");
            showEditInstructor(request,response);

        } else {
            Instructor newInstructor = new Instructor(id, name, Integer.parseInt(gender), mail, address, phoneNum);
            check= instructorDAO.updateInstructor(newInstructor);
            response.sendRedirect(request.getContextPath()+"/instructor?check="+check);
        }
    }


    private void showInfoInstructor(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        Instructor existInstructor = instructorDAO.selectInstructor(id);

        if (existInstructor == null) {
            response.sendRedirect("/error-404.jsp");
        } else {
            request.setAttribute("instructor", existInstructor);
            RequestDispatcher dispatcher = request.getRequestDispatcher("instructor/information.jsp");
            dispatcher.forward(request, response);
        }
    }

    private void searchInstructor(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, SQLException, IOException {
        String str = request.getParameter("string-search");
        List<Instructor> instructorList = instructorDAO.searchInstructor(str);
        System.out.println(instructorList);
        if (instructorList == null) {
            request.setAttribute("success", null);
            request.setAttribute("error", "This instructor is not on the list");
            request.setAttribute("warning", null);

            request.setAttribute("list", instructorList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("instructor/instructor.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("list", instructorList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("instructor/instructor.jsp");
            dispatcher.forward(request, response);
        }
    }


    private void showError404(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("error-404.jsp");
        dispatcher.forward(request, response);
    }


    private void deleteInstructor(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));

        if (instructorDAO.selectInstructor(id) == null) {
            request.setAttribute("success", null);
            request.setAttribute("error", "This instructor does not exist in the system");
            request.setAttribute("warning", null);

            listInstructor(request, response);
        } else {
            boolean check= instructorDAO.deleteInstructor(id);
            request.setAttribute("success", "Instructor has been deleted");
            request.setAttribute("error", null);
            request.setAttribute("warning", null);

            listInstructor(request, response);
        }
    }
}
