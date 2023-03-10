<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 05/01/2023
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body class="">
<jsp:include page="header/header.jsp"></jsp:include>
<div class="site-wrapper">
  <nav aria-label="breadcrumb" class="breadcrumb-wrapper">
    <div class="container">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tài khoản của tôi</li>
      </ol>
    </div>
  </nav>
  <div class="page-section sp-inner-page">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="row">
            <!-- My Account Tab Menu Start -->
            <div class="col-lg-3 col-12">
              <div class="myaccount-tab-menu nav" role="tablist">
                <a href="#dashboad" class="active" data-bs-toggle="tab"><i class="fas fa-tachometer-alt"></i>
                  Bộ điều khiển</a>
                <a href="#orders" data-bs-toggle="tab"><i class="fa fa-cart-arrow-down"></i> Lịch sử mua hàng</a>
                <a href="#payment-method" data-bs-toggle="tab"><i class="fa fa-credit-card"></i> Phương thức thanh toán</a>
                <a href="#address-edit" data-bs-toggle="tab"><i class="fa fa-map-marker"></i> Địa chỉ thanh toán</a>
                <a href="#account-info" data-bs-toggle="tab"><i class="fa fa-user"></i> Cập nhật tài khoản</a>
              </div>
            </div>
            <!-- My Account Tab Menu End -->
            <!-- My Account Tab Content Start -->
            <div class="col-lg-9 col-12 mt--30 mt-lg-0">
              <div class="tab-content" id="myaccountContent">
                <!-- Single Tab Content Start -->
                <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                  <div class="myaccount-content">
                    <h3>Bộ điều khiển</h3>
                    <div class="welcome mb-20">
                      <p>Xin chào, <strong>${sessionScope.user.fullName}</strong>
                    </div>
                    <p class="mb-0">Ở đây, bạn có thể dễ dàng kiểm tra và xem các đơn đặt hàng gần đây, quản lý địa chỉ giao hàng và thanh toán cũng như chỉnh sửa mật khẩu và chi tiết tài khoản của mình.
                    </p>
                  </div>
                </div>
                <!-- Single Tab Content End -->
                <!-- Single Tab Content Start -->
                <div class="tab-pane fade" id="orders" role="tabpanel">
                  <div class="myaccount-content">
                    <h3>Orders</h3>
                    <div class="myaccount-table table-responsive text-center">
                      <table class="table table-bordered">
                        <thead class="thead-light">
                        <tr>
                          <th>STT</th>
                          <th>Tên mặt hàng</th>
                          <th>Số lượng</th>
                          <th>Ngày đặt hàng</th>
                          <th>Trạng thái</th>
                          <th>Tổng tiền</th>
                          <th>Hoạt động</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                          <td>1</td>
                          <td> VIAMOX LA 20%</td>
                          <td>2</td>
                          <td>08/11/2022</td>
                          <td>chưa giải quyết
                          </td>
                          <td>250.000 VNĐ</td>
                          <td><a href="cart.html" class="btn">Xem sản phẩm</a></td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>GLUCO KCE CAPTOX</td>
                          <td>1</td>
                          <td>04/11/2022</td>
                          <td>Đã phê duyệt</td>
                          <td>99.000 VNĐ</td>
                          <td><a href="cart.html" class="btn">Xem Sản phẩm</a></td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>ALPHA TRYPSIN WSP</td>
                          <td>
                            4
                          </td>
                          <td>21/05/2022</td>
                          <td>Đã Giao</td>
                          <td>330.000 VNĐ</td>
                          <td><a href="cart.html" class="btn">Xem Sản phẩm</a></td>
                        </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
                <!-- Single Tab Content End -->
                <!-- Single Tab Content Start -->
                <!-- Single Tab Content Start -->
                <div class="tab-pane fade" id="payment-method" role="tabpanel">
                  <div class="myaccount-content">
                    <h3>Phương thức thanh toán</h3>
                    <p class="saved-message">Bạn chưa liên kết tài khoản ngân hàng.</p>
                  </div>
                </div>
                <!-- Single Tab Content End -->
                <!-- Single Tab Content Start -->
                <div class="tab-pane fade" id="address-edit" role="tabpanel">
                  <div class="myaccount-content">
                    <h3>Địa chỉ nhận hàng</h3>
                    <address>
                      <p><strong> Người nhận: </strong>${sessionScope.user.fullName}</p>
                      <p>
                        <strong>Địa chỉ: </strong><br>
                        ${sessionScope.user.address}
                      </p>
                    </address>
                  </div>
                </div>
                <!-- Single Tab Content End -->
                <!-- Single Tab Content Start -->
                <div class="tab-pane fade" id="account-info" role="tabpanel">
                  <div class="myaccount-content">
                    <h3>Cập nhật Thông tin</h3>
                    <div class="alert alert-success ${mess == null ? "sr-only":""}" role="alert">
                      Thay đổi thành công
                    </div>
                    <div class="account-details-form">
                      <form action="#" method="post">
                        <div class="row">
                          <div class="col-12 mb-30">
                            <input id="first-name" placeholder="Họ và Tên" type="text" name="fullname" required>
                          </div>
                          <div class="col-12 mb-30">
                            <input id="display-name" placeholder="Tên Hiển thị" type="text" name="username" required>
                          </div>
                          <div class="col-12 mb-30">
                            <input id="email" placeholder="Địa chỉ Email" type="email" name="email" required>
                          </div>
                          <div class="col-12 mb-30">
                            <input id="phone" placeholder="Số điện thoại" type="text" name="phone" required>
                          </div>
                          <div class="col-12 mb-30">
                            <input id="address" placeholder="Địa chỉ" type="text" name="address" required>
                          </div>
                          <div class="col-12">
                            <button class="btn btn-black" type="submit">Lưu Thay đổi</button>
                          </div>
                          <h3>
                            Đổi Mật Khẩu
                          </h3>
                            <strong>
                              <a href="changepass">
                                Nhấn vào đây để đổi mật khẩu
                              </a>
                            </strong>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
                <!-- Single Tab Content End -->
              </div>
            </div>
            <!-- My Account Tab Content End -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include page="footer/footer.jsp"></jsp:include>
<script src="js/plugins.js"></script>
<script src="js/ajax-mail.js"></script>
<script src="js/custom.js"></script>
</body>
</html>