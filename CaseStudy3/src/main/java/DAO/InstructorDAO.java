package DAO;

import model.Instructor;
import model.Student;
import utils.MySQLConnUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InstructorDAO implements IInstructorDAO{
    @Override
    public void insertInstructor(Instructor instructor) throws SQLException {
        String INSERT_INSTRUCTOR_SQL = "INSERT INTO instructors (name, gender, email, address, phoneNum) " +
                "VALUES (?, ?, ?, ?, ?);";

        Connection connection = MySQLConnUtils.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_INSTRUCTOR_SQL);

            ps.setString(1, instructor.getName());
            ps.setInt(2, instructor.getGender());
            ps.setString(3, instructor.getMail());
            ps.setString(4, instructor.getAddress());
            ps.setString(5, instructor.getPhoneNum());
            int d= ps.executeUpdate();
            System.out.println(d);
        } catch (SQLException ex){
            printSQLException(ex);
        }
    }


    @Override
    public Instructor selectInstructor(int id) {
        String SELECT_INSTRUCTOR_SQL_BY_ID = "SELECT * FROM instructors WHERE id = ?;";
        Instructor instructor = null;

        Connection connection = MySQLConnUtils.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_INSTRUCTOR_SQL_BY_ID);
            ps.setInt(1, id);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int idDB = rs.getInt("id");
                String name= rs.getString("name");
                int gender = rs.getInt("gender");
                String mail = rs.getString("email");
                String address = rs.getString("address");
                String phoneNum = rs.getString("phoneNum");
                instructor = new Instructor(idDB, name, gender, mail, address, phoneNum);
            }
        } catch (SQLException ex){
            printSQLException(ex);
        }

        return instructor;
    }

    @Override
    public List<Instructor> selectAllInstructors() {
        String SELECT_ALL_STUDENT_SQL = "SELECT id, name, gender,email, address, phoneNum FROM instructors;";
        List<Instructor> instructor = new ArrayList<>();

        Connection connection = MySQLConnUtils.getConnection();
        System.out.println(connection);
        try {
            PreparedStatement ps =connection.prepareStatement(SELECT_ALL_STUDENT_SQL);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int gender = rs.getInt("gender");
                String mail = rs.getString("email");
                String address = rs.getString("address");
                String phoneNum = rs.getString("phoneNum");

                instructor.add(new Instructor(id, name, gender, mail, address, phoneNum));
            }
        } catch (SQLException ex){
            printSQLException(ex);
        }

        return instructor;
    }

    @Override
    public boolean deleteInstructor(int id) throws SQLException {

        boolean check = false;
        String DELETE_INSTRUCTOR_SQL = "DELETE FROM instructors WHERE id = ?";
        Connection connection = MySQLConnUtils.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement(DELETE_INSTRUCTOR_SQL);
            ps.setInt(1, id);
            check = ps.executeUpdate() > 0;
        }catch (SQLException ex){
            printSQLException(ex);
        }
        return check;
    }

    @Override
    public boolean updateInstructor(Instructor instructor) throws SQLException {
        boolean update = false;
        String UPDATE_INSTRUCTOR_SQL = "UPDATE instructors SET name = ?, gender = ?, email = ?, " +
                "address = ?, phoneNum = ? WHERE id = ?";
        Connection connection = MySQLConnUtils.getConnection();

        try {
//            connection.setAutoCommit(false);
            PreparedStatement ps = connection.prepareStatement(UPDATE_INSTRUCTOR_SQL);
            ps.setString(1, instructor.getName());
            ps.setInt(2, instructor.getGender());
            ps.setString(3, instructor.getMail());
            ps.setString(4, instructor.getAddress());
            ps.setString(5, instructor.getPhoneNum());
            ps.setInt(6, instructor.getId());
           update=  ps.executeUpdate() > 0;
//
//            connection.commit();
//            connection.setAutoCommit(true);
//            update = true;
        } catch (SQLException ex){
//            connection.rollback();
            printSQLException(ex);
        }

        return update;
    }

    @Override
    public List<Instructor> searchInstructor(String searchName) throws SQLException {
        String SEARCH_INSTRUCTOR_SQL = "SELECT id, name, gender, email, address, phoneNum FROM instructors WHERE name LIKE ?;";
        List<Instructor> instructors = new ArrayList<>();
        Connection connection = MySQLConnUtils.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement(SEARCH_INSTRUCTOR_SQL);
            ps.setString(1,"%" + searchName + "%");
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int gender = rs.getInt("gender");
                String mail = rs.getString("email");
                String address = rs.getString("address");
                String phoneNum = rs.getString("phoneNum");

                instructors.add(new Instructor(id, name, gender, mail, address, phoneNum));
            }

        } catch (SQLException ex){
            printSQLException(ex);
        }
        return instructors;
    }
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
