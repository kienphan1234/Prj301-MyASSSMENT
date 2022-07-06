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
import model.Attendance;

/**
 *
 * @author ADMIN
 */
public class AttendanceReportDBContext extends DBContext<Attendance> {

    public ArrayList<Attendance> listattendancereport(String group,String code) {
        ArrayList<Attendance> Attendancers = new ArrayList<>();
        try {
            String sql = "select id,date, teacher, name_class, status from  [dbo].[attendance] where [group] like ? and code like ? " ;
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, group);
            stm.setString(2, code);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                Attendance a = new Attendance();
                a.setId(rs.getInt("id"));
                a.setDate(rs.getString("date"));
                a.setTeacher(rs.getString("teacher"));
                a.setClassName(rs.getString("name_class"));
                a.setStatus(rs.getInt("status"));
                Attendancers.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceReportDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Attendancers;
    }

    @Override
    public Attendance get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    

}
