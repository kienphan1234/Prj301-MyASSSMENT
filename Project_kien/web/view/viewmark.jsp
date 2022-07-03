<%-- 
    Document   : viewmark
    Created on : Jun 29, 2022, 9:08:55 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
         <p style="background-color:#1cade7; font-size: 22px"><a href="home"> Home </a> | View-grade</p>
    <h1>View grade of Student</h1>
    <form method="post" action="">
        Choose group: <input type="text" name="groupName" >
            <input type="submit" value="Choose"><br/>
            Choose course: <input type="text" name="courseID" >
            <input type="submit" value="Choose">
        <h2 style="font-size: 20px; color: rgb(255, 99, 71);"><center>STUDENT LIST</center></h2>
        <table>
            <tr>
                <td style="width:10%;"><p></p></td>
                <td style="width:10%;"><p>Progress test(10%)</p></td>
                <td style="width:10%;"><p>WORKSHOP (10%)</p></td>
                <td style="width:10%;"><p>ASSIGNMENT(40%)</p></td>
                <td style="width:10%;"><p>PE(20%)</p></td>   
                <td style="width:10%;"><p>FE(20%)</p></td>  
                <td style="width:10%;"><p>GRADE</p></td>
                <td style="width:10%;"><p>STATUS</p></td> 
            </tr>
            <tr>
                <td style="width:10%;"><p>Phan Trung Kien</p></td>
                <td style="width:10%;"><p>7</p></td>
                <td style="width:10%;"><p>6</p></td>
                <td style="width:10%;"><p>8</p></td>
                <td style="width:10%;"><p>7</p></td>
                <td style="width:10%;"><p>7</p></td>    
                <td style="width:10%;"><p>7.5</p></td>
                <td style="width:10%;"><p style="color:#33CC33">PASSED</p></td>
            </tr>
             <tr>
                <td style="width:10%;"><p>Lê Thị Anh</p></td>
                <td style="width:10%;"><p>2</p></td>
                <td style="width:10%;"><p>1</p></td>
                <td style="width:10%;"><p>2</p></td>
                <td style="width:10%;"><p>3</p></td>
                <td style="width:10%;"><p>1</p></td>    
                <td style="width:10%;"><p>2.5</p></td>
                <td style="width:10%;"><p style="color:#FF0000">NOTPASSED</p></td>
            </tr>
        </table>
    </form>
 
    </body>
</html>
