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
import model.Assesment;
import model.Exam;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class ExamDBContext extends DBContext<Exam>{

    @Override
    public ArrayList<Exam> list() {
        ArrayList<Exam> exams = new ArrayList<>();
        try {
            String sql = "SELECT A.* FROM\n"
                    + "(SELECT * FROM Exam) A\n"
                    + "INNER JOIN\n"
                    + "(SELECT sid,aid,MAX(date) as date FROM Exam\n"
                    + "GROUP BY sid,aid) B\n"
                    + "ON A.aid = B.aid AND A.sid = B.sid AND A.date = B.date";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Exam e = new Exam();
                e.setId(rs.getInt("eid"));
                e.setScore(rs.getFloat("score"));
                e.setDate(rs.getDate("date"));
                Student s = new Student();
                s.setId(rs.getInt("sid"));
                e.setStudent(s);
                Assesment a = new Assesment();
                a.setId(rs.getInt("aid"));
                e.setAssesment(a);
                exams.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ExamDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return exams;
    }

    @Override
    public Exam get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Exam model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Exam model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Exam model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    public void saveChanges(ArrayList<Exam> exams) {
        try {
            connection.setAutoCommit(false);
            for (Exam exam : exams) {
                //INSERT
                if (exam.getId() == -1 && exam.getScore() != -1) {
                    String sql_insert = "INSERT INTO [dbo].[Exam]\n"
                            + "           ([sid]\n"
                            + "           ,[aid]\n"
                            + "           ,[score]\n"
                            + "           ,[date])\n"
                            + "     VALUES\n"
                            + "           (?\n"
                            + "           ,?\n"
                            + "           ,?\n"
                            + "           ,GETDATE())";
                    PreparedStatement stm = connection.prepareStatement(sql_insert);
                    stm.setInt(1, exam.getStudent().getId());
                    stm.setInt(2, exam.getAssesment().getId());
                    stm.setFloat(3, exam.getScore());
                    stm.executeUpdate();
                } //UPDATE
                else if (exam.getId() != -1 && exam.getScore() != -1) {
                    String sql_update = "UPDATE Exam SET Score = ? WHERE eid = ?";
                    PreparedStatement stm = connection.prepareStatement(sql_update);
                    stm.setInt(2, exam.getId());
                    stm.setFloat(1, exam.getScore());
                    stm.executeUpdate();
                } //DELETE
                else if (exam.getId() != -1 && exam.getScore() == -1) {
                    String sql_delete = "DELETE Exam WHERE eid = ?";
                    PreparedStatement stm = connection.prepareStatement(sql_delete);
                    stm.setInt(1, exam.getId());
                    stm.executeUpdate();
                }

            }
            connection.commit();
        } catch (SQLException ex) {
            Logger.getLogger(ExamDBContext.class.getName()).log(Level.SEVERE, null, ex);
            try {
                connection.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(ExamDBContext.class.getName()).log(Level.SEVERE, null, ex1);
            }
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(ExamDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }
}
