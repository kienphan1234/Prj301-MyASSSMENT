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
        <title>JSP Page</title>
        <link href="../css/grid_control.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="addmark" method="POST">
            <table border="1px">
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
            <br/>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
