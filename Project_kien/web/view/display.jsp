<%-- 
    Document   : display
    Created on : Jun 7, 2022, 1:31:52 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="css_display.css">    
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <table  class="table table-bordered" >
                <tr  class="table-primary">
                    <th align="left" class="th1">YEAR 
                        <select>
                            <option>2021</option>
                            <option>2022</option>              
                        </select>
                        <br/>
                        WEEK
                        <select>
                            <option>06/06 TO 11/06</option>
                            <option>12/06 TO 15/06</option> 
                        </select>

                    </th>
                    <th align="left">MON

                    </th>
                    <th align="left">TUE</th>
                    <th align="left">WED</th>
                    <th align="left">THU</th>
                    <th align="left">FRI</th>
                    <th align="left">SAT</th>
                    <th align="left">SUN</th>
                </tr>
                <tr>
                    <td>Slot 1</td>
                    <c:forEach items="${listTable}" var="c">
                        <td class="text-primary">${c.name} <br/> in ${c.room}</td>
                    </c:forEach>


                </tr>
                <tr>
                    <td>Slot 2</td>
                    <c:forEach items="${listTable}" var="c">
                        <td>${c.name}  in ${c.room}</td>
                    </c:forEach>
                </tr>
                <tr>
                    <td>Slot 3</td>
                    <c:forEach items="${listTable}" var="c">
                        <td>${c.name} in ${c.room}</td>
                    </c:forEach>
                </tr>
                <tr>
                    <td>Slot 4</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Slot 5</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Slot 6</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Slot 7</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Slot 8</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </body>
</html>
