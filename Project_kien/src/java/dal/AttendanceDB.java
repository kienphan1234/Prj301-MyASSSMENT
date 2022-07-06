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
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendance;
import model.User;
import org.apache.tomcat.util.net.SSLHostConfigCertificate;

/**
 *
 * @author ADMIN
 */
public class AttendanceDB extends DBContext<User> {

    
    public ArrayList<User> list() {
        ArrayList<User> users = new ArrayList<>();
        String sql = "select*\n"
                + "from [dbo].[user]";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User r = new User();
                r.setUser_name(rs.getString("username"));
                users.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDB.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(AttendanceDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return users;
    }

    public ArrayList<Attendance> listAttendance(String className) {
        ArrayList<Attendance> listAttendance = new ArrayList<>();
        String sql = "select * from attendance where attendance.name_class like ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, className);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Attendance r = new Attendance(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6));

                listAttendance.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDB.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(AttendanceDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return listAttendance;
    }

    public ArrayList<String> listClass() {
        ArrayList<String> listClass = new ArrayList<>();
        String sql = "select distinct name_class from attendance";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {

                listClass.add(rs.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDB.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(AttendanceDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return listClass;
    }

    public ArrayList<String> listCode(String className) {
        ArrayList<String> listCode = new ArrayList<>();
        String sql = "select code from attendance where name_class like ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, className);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {

                listCode.add(rs.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDB.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(AttendanceDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return listCode;
    }

    public void update(String code,int number) {
        ArrayList<String> listCode = new ArrayList<>();
        
        
            String sql = "UPDATE attendance SET status = ? where code like ?";
            try {
                PreparedStatement stm = connection.prepareStatement(sql);
                stm.setInt(1, number);
                stm.setString(2, code);
                stm.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(AttendanceDB.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AttendanceDB.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        

    }

    public static void main(String[] args) {
        AttendanceDB dao = new AttendanceDB();
        ArrayList<User> list = dao.list();

        for (User object : list) {
            System.out.println(object.toString());
        }
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
