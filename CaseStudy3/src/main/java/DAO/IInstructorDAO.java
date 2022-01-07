package DAO;

import model.Instructor;
import model.Student;

import java.sql.SQLException;
import java.util.List;

public interface IInstructorDAO {
    public void insertInstructor(Instructor instructor) throws SQLException;



    public Instructor selectInstructor(int id);

    public List<Instructor> selectAllInstructors();



    public boolean deleteInstructor(int id) throws SQLException;

    public boolean updateInstructor(Instructor instructor) throws SQLException;

    public List<Instructor> searchInstructor(String searchName) throws SQLException;
}
