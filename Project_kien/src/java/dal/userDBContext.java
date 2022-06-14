/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.user;

/**
 *
 * @author ADMIN
 */
public class userDBContext extends DBContext<user> {

    @Override
    public ArrayList<user> list() {
        ArrayList<user> users = new ArrayList<>();
        String sql = "select*\n"
                + "from [dbo].[user]";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                user r = new user();             
                users.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(userDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(userDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return users;
    }
    public static void main(String[] args) {
         userDBContext dao = new userDBContext();
         ArrayList<user> list = dao.list();
        
            for (user object : list) {
                System.out.println(object.toString());
        }
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
