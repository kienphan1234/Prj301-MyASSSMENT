<%-- 
    Document   : takeAttendance
    Created on : Jun 21, 2022, 9:50:03 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <h2>Attendance</h2>
            <p>Class SE1627</p>            
            <table class="table">
                <thead>
                    <tr>
                        <th>No</th>
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
                    <c:forEach begin="1" end="5">
                        <tr>
                            <td>1</td>
                            <td>IOT102</td>
                            <td>HE</td>
                            <td>SAO</td>
                            <td><img src="https://image.shutterstock.com/image-vector/default-avatar-profile-icon-grey-260nw-518740747.jpg"></td>
                            <td><input type="radio" name="status"><p>Attended</p>|<input type="radio" name="status"><p>Absent</p></td>
                            <td>Name</td>
                            <td>12/12/2021</td>
                            


                        </tr>
                    </c:forEach>


                </tbody>
            </table>
        </div>

    </body>
</html>
