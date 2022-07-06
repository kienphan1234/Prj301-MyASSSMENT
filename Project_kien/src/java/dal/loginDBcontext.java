/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author ADMIN
 */
public class loginDBcontext extends DBContext<User>{
    public User getAccountByUsernamePassword(String user_name, String password) {
        try {
            String sql = "SELECT* FROM [dbo].[user]\n"
                    + "WHERE username = ? AND pass = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user_name);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
                User r = new User();
                r.setUser_name(rs.getString("username"));
                r.setRole(rs.getInt("role"));
                return r;
            }
        } catch (SQLException ex) {
            Logger.getLogger(loginDBcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public String getCode(String user_name, String password) {
        try {
            String sql = "SELECT sid FROM [dbo].[user]\n"
                    + "WHERE username = ? AND pass = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user_name);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
         
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(loginDBcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

   

    @Override
    public User get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(User model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(User model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(User model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
