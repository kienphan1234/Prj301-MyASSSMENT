<%-- 
    Document   : Attendance report
    Created on : Jun 14, 2022, 8:10:39 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get" action="attendanceview">
            <p style="background-color:#1cade7; font-size: 22px"><a href="home"> Home </a> | View attendance</p>

            <h1>View attendance for ${sessionScope.account.user_name}</h1>
            <div style="padding-left: 20px; width:50px;float: left;">
                <table>
                    <tr>
                        <td style="font-size: 20px; color: #1cade7">CAMPUS/PROGRAM</td>
                    </tr>
                    <tr>
                        <td>
                            <p><a href="#">FU-HL</a></p>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="padding-left: 200px; width:450px;float: left;">

                <table >
                    <tr>
                        <td style="font-size: 20px; color: #1cade7">TERM</td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#">Summer2021</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#">Fall2021</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#">Spring2022</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="#" class="text-success">Summer2022</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="width:500px;float: left;">
                <table>
                    <tr>
                        <td style="font-size: 20px; color: #1cade7">COURSE</td>
                    </tr>
                    <tr>
                        <td>
                            <p> <a href="#">Basic Cross-Platform Application Programming With .NET(PRN211)  </a></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           
                            <p> <a href="#" class="text-success">Java Web Application Development (PRJ301)   </a></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p><a href="#">Software Testing (SWT301)</a></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p><a href="#">Software Requirement (SWR302) </a></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p><a href="#">Ethics in IT(ITE302c)</a></p>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="width:350px;float: left;">
                <table>
                    <tr>
                        <td style="font-size: 20px;color: #1cade7"><center>...then see report</center></td>
                    </tr>
                    <tr>
                        <td><p style="font-size: 12px ">NO</p></td>
                        <td><p style="font-size: 12px; padding-right: 20px;">DATE</p></td>
                        <td><p style="font-size: 12px;padding-right: 20px;">SLOT</p></td>
                        <td><p style="font-size: 12px;padding-right: 20px;">ROOM</p></td>
                        <td><p style="font-size: 12px;padding-right: 20px;">LECTURER</p></td>
                        <td><p style="font-size: 12px;padding-right: 20px;">GROUP NAME</p></td>
                        <td><p style="font-size: 12px;padding-right: 20px;">ATTEDANCE STATUS</p></td>
                        <td><p style="font-size: 12px;padding-right: 20px;">LECTURER'S COMMENT</p></td>
                    </tr>
                      <c:forEach items="${listAttends}" var="r">
                    <tr>   
                        <td><p>${r.id}</p></td>
                        <td><p style=" padding-right: 20px;">${r.date}</p></td>
                        <td><p>1</p></td>
                        <td><p>DE-C303</p></td>
                        <td><p>${r.teacher}</p></td>
                        <td><p>${r.className}</p></td>
                        <td>
                            <c:if test="${r.status == 1}">
                        <p style="color:#33CC33">Present</p>
                        </c:if>
                        <c:if test="${r.status != 1}">
                        <p class="text-danger">Absent</p>
                        </c:if>
                            
                        </td>
                          
                    </tr>
                 
                    </c:forEach>    
                </table>
            </div>

        </form>

    </body>
</html>

                      
