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
                    <p >FU-HL</p>
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
                        <p id="Summer2021" onclick="myFunction('Summer2021')">Summer2021
                    </td>
                </tr>
                <tr>
                    <td>
                        <p id="Fall2021" onclick="myFunction('Fall2021')">Fall2021</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p id="Spring2022" onclick="myFunction('Spring2022')">Spring2022</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p id="Summer2022" onclick="myFunction('Summer2022')">Summer2022</p>
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
                        <p id="MAE101" onclick="myFunction('PRN211')">Basic Cross-Platform Application Programming With .NET(PRN211)  </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p id="PRF192" onclick="myFunction('PRJ301')">Java Web Application Development (PRJ301) </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p id="CSI104" onclick="myFunction('SWT301')">Software Testing (SWT301)</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p id="CEA201" onclick="myFunction('SWR302')">Software Requirement (SWR302) </p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p id="SSL101c" onclick="myFunction('ITE302c')">Ethics in IT(ITE302c)</p>
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
               <tr>
                   <td><p>1</p></td>
                   <td><p style=" padding-right: 20px;">Monday 09/05/2022</p></td>
                   <td><p>2</p></td>
                   <td><p>DE-C303</p></td>
                   <td><p>SangNV</p></td>
                   <td><p>SE1620-NET</p></td>
                   <td><p style="color:#33CC33">Present</p></td>
                </tr>
                <tr>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                </tr>
                <tr>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                </tr>
            </table>
        </div>
    
    </form>
 
    </body>
</html>
</c:forEach>
                        <c:forEach items="${list}" var="c">
                        <c:if test="${c.status == 1}">
                        <h1>Present</h1>
                        </c:if>
                        <c:if test="${c.status != 1}">
                        <h1>Absent</h1>
                        </c:if>
                    </c:forEach>
