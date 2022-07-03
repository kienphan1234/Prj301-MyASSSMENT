<%-- 
    Document   : addmark
    Created on : Jun 29, 2022, 9:09:12 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <p style="background-color:#1cade7; font-size: 22px"><a href="home"> Home </a> | Add-grade</p>
    <h1>Insert grade for Student</h1>
        <form action="addmark" method="POST">
            Choose group: <input type="text" name="groupName" >
            <input type="submit" value="Choose"><br/>
            Choose course: <input type="text" name="courseID" >
            <input type="submit" value="Choose">
            </br>
             <h2 style="font-size: 20px; color: rgb(255, 99, 71);"><center>STUDENT LIST</center></h2>
            <div class="table-responsive">
            <table class="table">
                <tr>
                    <td></td>
                    <c:forEach items="${requestScope.assesments}" var="a">
                        <td>${a.name}</td> 
                    </c:forEach>
                <tr/>
                <c:forEach items="${requestScope.students}" var="s">
                    <tr>
                        <td>${s.name}</td>
                        <c:forEach items="${requestScope.assesments}" var="a">
                            <td>
                                <input name="score${s.id}_${a.id}" class="short_textfield" type="text"
                                       <c:forEach items="${requestScope.exams}" var="e">   
                                           <c:if test="${e.student.id eq s.id and e.assesment.id eq a.id}">
                                               value="${e.score}"
                                           </c:if>
                                       </c:forEach>
                                       />
                                <input name="eid${s.id}_${a.id}" type="hidden"
                                       <c:forEach items="${requestScope.exams}" var="e">   
                                           <c:if test="${e.student.id eq s.id and e.assesment.id eq a.id}">
                                               value="${e.id}"
                                           </c:if>
                                       </c:forEach>
                                       />
                                <input name="component" value="${s.id}_${a.id}" type="hidden"
                                       />

                            </td> 
                        </c:forEach>
                    <tr/>  
                </c:forEach>
            </table>
                </div>
            <br/>
            <center><input  style=" padding: 10px 20px"; class="btn btn-outline-success" type="submit" value="Save"/></center>
        </form>
    </body>
</html>
