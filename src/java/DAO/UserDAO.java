/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO extends DAO {

    public UserDAO() {
        super();
    }

    public User checkLogin(String username, String password) {
        String sql = "select * from user where username = ? and password = ?";
        User user = new User();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user.setEmployeeId(rs.getInt("employeeId"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setPosition(rs.getString("position"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}
