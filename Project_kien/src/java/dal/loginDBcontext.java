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
import model.user;

/**
 *
 * @author ADMIN
 */
public class loginDBcontext extends DBContext<user>{
    public user getAccountByUsernamePassword(String user_name, String password) {
        try {
            String sql = "SELECT* FROM [dbo].[user]\n"
                    + "WHERE user_name = ? AND password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user_name);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
                user r = new user();
                r.setUser_name(rs.getString("user_name"));
                r.setId(rs.getString("id"));
                r.setSur_name(rs.getString("sur_name"));
                r.setMiddle_name(rs.getString("middle_name"));
                r.setGive_name(rs.getString("given_name"));
                r.setDob(rs.getString("dob"));
                r.setPhone(rs.getString("phone"));
                r.setSex(rs.getString("sex"));
                r.setId_card(rs.getString("id_card"));
                r.setAddress(rs.getString("address"));
                r.setEmail(rs.getString("email"));
                r.setCampus(rs.getString("campus"));
                
                return r;
            }
        } catch (SQLException ex) {
            Logger.getLogger(loginDBcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<user> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public user get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(user model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(user model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(user model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
