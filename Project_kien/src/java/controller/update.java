/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AttendanceDB;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import model.Attendance;

/**
 *
 * @author ADMIN
 */
public class update extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String className = request.getParameter("className");
        ArrayList<Attendance> listAttend = new AttendanceDB().listAttendance(className);
        HashMap<String, Integer> hashMap = new HashMap<>();
        if(hashMap == null)
            hashMap = new LinkedHashMap<>();
        ArrayList<String> listCode = new AttendanceDB().listCode(className);
        for (String string : listCode) {  
            if(Integer.parseInt(request.getParameter(string)) == 1)
                hashMap.put(string, 1);  
            else
                hashMap.put(string, 0);  
        }
//        System.out.println(hashMap);
        for (String key : hashMap.keySet()) {
            new AttendanceDB().update(key,hashMap.get(key));
        }
        request.getRequestDispatcher("./view/notice.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

//    public static void main(String[] args) {
//        
//        ArrayList<Attendance> listAttend = new AttendanceDB().listAttendance("SE1608");
//        HashMap<String, Integer> hashMap = new HashMap<>();
//        ArrayList<String> listCode = new AttendanceDB().listCode("SE1608");
//        for (String string : listCode) {
//             
//                hashMap.put(string, 1);
//            
//        }
//        System.out.println(hashMap);
//    }

}
