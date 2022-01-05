package DAO;

import model.Account;
import utils.MySQLConnUtils;

import java.sql.*;

public class AccountDAO implements IAccountDAO {


    public AccountDAO() {
    }



    @Override
    public Account selectAccount(String username, String password) {
        String SELECT_ACCOUNT_SQL = "select * from accounts where username =? and password =?";

        Account account = null;

        Connection connection = MySQLConnUtils.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ACCOUNT_SQL);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt(1);
                String user = rs.getString(2);
                String pass = rs.getString(3);
                int idRole = rs.getInt(4);

                account = new Account(id, user, pass, idRole);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return account;
    }
}
