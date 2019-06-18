/**
 * Create an implementation for the Users interface.
 *
 * Create a class named MySQLUsersDao that implements Users.
 * Add functionality to the DaoFactory class to return an instance of the users data access object.
 *
 * */
package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    @Override

    public User findByUsername(String username) {
        try{
            PreparedStatement preparedStatement = connection.prepareStatement("select * from users where username = ?");
            //            Extra step to set the values, escaping or parsing
            preparedStatement.setLong(1, username);
            ResultSet rs = preparedStatement.executeQuery();
            rs.next();
            return extractUser(rs);


        }catch(SQLException e ){
            throw new RuntimeException("Error retrieving an ad.", e);
        }
    }
    private User extractUser(ResultSet rs) throws SQLException {
        return new User(
                 rs.getId(),
                 rs.getUsername("username"),
                 rs.getEmail("email"),
                 rs.getPassword("password")
                 );
    }
    @Override
    public Long insert(User user) {
        try{
            String sql = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(user.getUsername());
            stmt.setString(user.getEmail());
            stmt.setString(user.getPassword());

            return null;
        }
    }
}
