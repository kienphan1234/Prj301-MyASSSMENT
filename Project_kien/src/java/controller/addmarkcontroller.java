/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.AssesmentDBContext;
import dal.ExamDBContext;
import dal.StudentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.util.ArrayList;
import model.Assesment;
import model.Exam;
import model.Student;

/**
 *
 * @author ADMIN
 */
public class addmarkcontroller extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
       
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.setAttribute("students", dbStu.list());
        request.setAttribute("assesments", dbAss.list());
        request.setAttribute("exams", dbExam.list());
         request.getRequestDispatcher("view/addmark.jsp").forward(request, response);
    } 
    ExamDBContext dbExam = new ExamDBContext();
    AssesmentDBContext dbAss = new AssesmentDBContext();
    StudentDBContext dbStu = new StudentDBContext();

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String[] components = request.getParameterValues("component");
        ArrayList<Exam> exams = new ArrayList<>();
        for (String component : components) {
            int sid = Integer.parseInt(component.split("_")[0]);
            int aid = Integer.parseInt(component.split("_")[1]);
            Exam e = new Exam();
            String eid = request.getParameter("eid"+sid+"_"+aid);
            if(eid.length()>0)
                e.setId(Integer.parseInt(eid));
            else
                e.setId(-1);
            String score = request.getParameter("score"+sid+"_"+aid);
            if(score.length()>0)
                e.setScore(Float.parseFloat(score));
            else
                e.setScore(-1);
            Student s = new Student();
            s.setId(sid);
            Assesment a = new Assesment();
            a.setId(aid);
            e.setAssesment(a);
            e.setStudent(s);
            exams.add(e);
        }
//        ArrayList<Exam> exams2 = new ArrayList<>();
//        Student student = new Student(1,"Phan Trung Kien");
//        Assesment assesment = new Assesment(3,"Workshop 1",3.0f);
//         Exam examx = new Exam(1,student,assesment,13.0f);
//         exams2.add(examx);
        dbExam.saveChanges(exams);
        response.sendRedirect("addmark");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
