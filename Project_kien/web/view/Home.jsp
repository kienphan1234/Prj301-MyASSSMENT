<%-- 
    Document   : Home
    Created on : Jun 14, 2022, 8:09:45 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB2pEAwzcQnc8QDtlwY3ugwg9Gzpfwkf11vAuOya_MgxdedWempaAssClcRmvEgjtmWPE&usqp=CAU" style="width:200px;height:200px;"></td>

    <nav class="navbar navbar-expand-sm navbar-dark" style="background-color: rgb(255, 102, 0)">
        <div class="container-fluid">
            <a class="navbar-brand" href="home">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="mynavbar">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Introduce</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Majors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login">Sign out</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <h5>Account: ${sessionScope.account.user_name}</h5>
                </form>
            </div>
        </div>
    </nav>      

    <div> 
        <nav class="navbar navbar-light" style="background-color: rgb(153, 255, 153)">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Information Access(Tra cứu thông tin)</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="timetable">Weekly timetable(Thời khóa biểu từng tuần)</a>
                        </li>
                        <c:if test="${sessionScope.account.role == 0}">
                        <li class="nav-item">
                            <a class="nav-link" href="attendanceview">Attendance report(Báo cáo điểm danh)</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="Markview">Mark Report (Báo cáo điểm)</a>
                        </li>
                        </c:if>
                        <c:if test="${sessionScope.account.role == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="takeAttendance">Attendance(Điểm danh)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="viewattendence">view Attendance( Xem Điểm danh)</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link" href="addmark">Add Mark(Nhập Điểm)</a>
                            </li>
                        </c:if>
                       
                    </ul>
                </div>
            </div>
        </nav>


    </div>
    <div class="container mt-3">
        <p class="text-nowrap">© 2022 Bản quyền thuộc về Trường Đại học FPT.</p>
    </div>


</body>
</html>
