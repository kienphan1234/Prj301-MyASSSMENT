<%-- 
    Document   : menu
    Created on : Jun 14, 2022, 8:09:29 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <div >
        <nav class="navbar navbar-expand-sm navbar-dark" style="background-color: rgb(255, 102, 0)">
            <div class="container-fluid">
                <a class="navbar-brand" href="menu">Menu</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="mynavbar">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="home">Home</a>
                        </li>
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
                        <input class="form-control me-2" type="text" placeholder="Search">
                        <button class="btn btn-primary" type="button">Search</button>
                    </form>
                </div>
            </div>
        </nav>      


    </div>


    <div id="content">
        <div class="pageitem">
            <div class="text-center">
                <h2>Lịch học tập trung tại trường kỳ Summer 2022</h2><br>
            </div>                              

            Chào mừng các em sinh viên quay lại học tập trực tiếp tại trường từ kỳ Summer 2022.<br>
            Hiện tại, lịch học và danh sách lớp đã được đưa lên hệ thống FAP, các em kiểm tra lịch học và phòng học của mình để tham gia đúng giờ.<br>
            Ký hiệu các phòng học trên FAP thuộc các tòa nhà giảng đường như sau:<br>
            Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha.<br>
            Các phòng bắt đầu bằng BE thuộc tòa nhà Beta.<br>
            Các phòng bắt đầu bằng DE thuộc tòa nhà Delta.<br>
            Các phòng bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br>
            Các lớp tiếng Anh chương trình Little UK (LUK) học tại tầng 5 tòa nhà Delta.<br>
            Những sinh viên phải cách ly do dương tính với Covid-19 cần thông báo cho nhà trường bằng cách làm đơn trên FAP phần Đơn khác để được bố trí học từ xa qua link Google Meet.<br>
            Chúc các em sinh viên có một học kỳ an toàn và thành công!<br>                                                                                                                                                                       
            Phòng Tổ chức và quản lý đào tạo<br>
        </div>

    </body>
</html>
