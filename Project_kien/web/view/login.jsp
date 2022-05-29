<%-- 
    Document   : login
    Created on : May 29, 2022, 9:58:40 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="POST">
            user_name: <input type="text" name="name"/><br/>
            password: <input type="password" name="password" /><br/>
            <input type="submit" value="Login" />
        </form>
  
    </body>
</html>
