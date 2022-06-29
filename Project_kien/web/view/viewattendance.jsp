<%-- 
    Document   : viewattendance
    Created on : Jun 29, 2022, 8:17:29 AM
    Author     : ADMIN
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>JSP Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>


        <div class="container mt-3">
            <div class="alert alert-success">View Attendance <a href="home">Home</a></div>

            <p>
            <form action="viewattendence" method="get">
                <select name="class">
                    <c:forEach items="${listClass}" var="c">
                        <option 

                            value="${c}" ${param['class']==c?'selected':''}>${c}</option>


                    </c:forEach>
                </select>
                <button class="btn btn-outline-success" type="submit">list Student</button>
            </form>







        </p>  
        <form action="viewattendence" method="post">

            <input type="hidden" name="className" value="${className}">
            <table class="table">
                <thead>
                    <tr style="background-color: rgb(51, 153, 255)">

                        <th>Group</th>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Image</th>
                        <th>Status</th>
                        <th>Taken</th>
                        <th>Time</th>

                    </tr>
                </thead>
                <tbody>

                    <c:forEach items="${listAttend}" var="c">
                        <tr>

                            <td>${c.group}</td>
                            <td>${c.code}</td>
                            <td>${c.name}</td>
                            <td><img src="https://scr.vn/wp-content/uploads/2020/07/Avatar-Facebook-tr%E1%BA%AFng.jpg" style="width:100px;height:100px;"></td>
                            <td>
                                <c:if test="${c.status == 1}">
                                    <p style="color:rgb(0, 153, 51)">Present</p>
                                </c:if>
                                <c:if test="${c.status != 1}">
                                    <p class="text-danger">Absent</p>
                                </c:if>
                            </td>
                            <td>${sessionScope.account.user_name}</td>
                            <td>${c.date}</td>

                        </c:forEach>

                    </tr>
                </tbody>

            </table>
        </form>

    </div>
</body>
</html>

