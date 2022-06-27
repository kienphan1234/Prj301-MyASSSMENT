<%-- 
    Document   : takeAttendance
    Created on : Jun 21, 2022, 9:50:03 PM
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
            <h2>Take Attendance</h2>
            <p>
            <form action="takeAttendance" method="get">
                <select name="class">
                    <c:forEach items="${listClass}" var="c">

                        <option value="${c}">${c}</option>

                    </c:forEach>
                </select>
                <button type="submit">Submit</button>
            </form>







        </p>  
        <form action="update" method="post">

            <input type="hidden" name="className" value="${className}">
            <table class="table">
                <thead>
                    <tr>

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

                                <input type="radio" name="${c.code}" value="1" ${c.status == 1 ? "checked":""}>Attended|<input type="radio" name="${c.code}" value="0"  ${c.status == 0 ? "checked":""}>Absent</td>

                            </td>
                            <td>${sessionScope.account.user_name}</td>
                            <td>${c.date}</td>

</c:forEach>

                        </tr>
                </tbody>

            </table>
            <div class="text-center">
                <input type="submit" class="btn btn-outline-success" value="ADD" /><br/>
                <p></p><br/>
                <p></p>
            </div>
        </form>

    </div>
</body>
</html>
