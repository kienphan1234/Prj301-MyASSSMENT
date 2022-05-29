<%-- 
    Document   : login
    Created on : May 29, 2022, 9:58:40 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="style.css">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url(./img/Ảnh-6.jpg);">

        <form action="login" method="POST">
            <div class="title">
                <h>FPT University Academic Portal</h>
            </div>

            <div class="login-box">

                <h1>Login</h1>
                <div class="textbox">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" placeholder="Username" name="Username">
                </div>
                <div class="textbox">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" placeholder="Password" name="Password">
                </div>
                <input type="submit" class="btn" value="Sign In">
            </div>
        </form>
        <img  src="./img/Ảnh-6.jpg" class="anh_fpt">
    </body>
</html>
