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
         <div class="alert alert-success text-center">
    <h1>FPT University Academic Portal</h1>
</div>
 <nav>
   <ul>
    <li><a class="active" href="home">Home</a></li>
   
    <li>><a href="login">Sign out</a></li>
   </ul>
  
     
</nav>
        kien:  ${requestScope.user.user_name}


</body>
<div>      
  <h3>Information Access(Tra cứu thông tin)</h3>
  </div>
  <div>               
          <a href="timetable">Weekly timetable(Thời khóa biểu từng tuần)</a><br>
          <a href="attendanceview">Attendance report(Báo cáo điểm danh)</a><br>
          <a href="Markview">Mark Report (Báo cáo điểm)</a>
                
</div>
    </body>
</html>
