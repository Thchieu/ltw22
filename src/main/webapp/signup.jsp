<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 01/01/2023
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/plugins.css" />
    <link rel="stylesheet" href="css/main.css" />
    <link rel="shortcut icon" type="image/x-icon" href="image/favicon.ico">
    <title>Petmark ❤️</title>
</head>
<body class="petmark-theme-2">
<div class="site-wrapper">
    <jsp:include page="header/header.jsp"></jsp:include>
    <nav aria-label="breadcrumb" class="breadcrumb-wrapper">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                <li class="breadcrumb-item active" aria-current="page">Đăng ký</li>
            </ol>
        </div>
    </nav>

    <div class="container">
        <header class="entry-header">

        </header>
        <div class="row">
            <form action="signup" method="post">
                <div class="alert alert-danger ${mess1 == null ? "sr-only":""}" role="alert">
                    Nhập lại mật khẩu sai
                </div>
                <div class="alert alert-danger ${mess2 == null ? "sr-only":""}" role="alert">
                    Tên đăng nhập đã tồn tại
                </div>
                <h4 class="login-title" style="text-align: center">Đăng ký</h4>
                <div class="login-form">
                    <div class="row">
                        <div class="col-md-12 col-12 mb--20">
                            <label>Họ tên*</label>
                            <input class="mb-0" type="text" name = "full-name" required>
                        </div>
                        <div class="col-md-12 col-12 mb--20">
                            <label>Địa chỉ Email*</label>
                            <input class="mb-0" type="text" name="email" required>
                        </div>
                        <div class="col-md-12 col-12 mb--20">
                            <label>Tên đăng nhập*</label>
                            <input class="mb-0" type="text" name="username" required>
                        </div>
                        <div class="col-12 mb--20">
                            <label>Mật khẩu*</label>
                            <input class="mb-0" type="password" name="password" required>
                        </div>
                        <div class="col-12 mb--20">
                            <label>Nhập Lại Mật khẩu*</label>
                            <input class="mb-0" type="password" name="re-password" required>
                        </div>
                        <div class="col-md-12 col-12 mb--20">
                            <label>Địa chỉ*</label>
                            <input class="mb-0" type="text" name="address" required>
                        </div>
                        <div class="col-12 mb--20">
                            <label>Số điện thoại*</label>
                            <input class="mb-0" type="text" name="phone" required>
                        </div>
                        <div class="col-md-12" style="text-align: center">
                            <button class="btn btn-black" type="submit">Đăng ký</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
<jsp:include page="footer/footer.jsp"></jsp:include>
<script src="js/plugins.js"></script>
<script src="js/ajax-mail.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
