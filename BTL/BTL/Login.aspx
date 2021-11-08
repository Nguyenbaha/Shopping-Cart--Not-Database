<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BTL.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="trangchu.css"/>
    <link rel="stylesheet" href="giohang.css"/>
    <link rel="stylesheet" href="login.css"/>
</head>
<body>
    <header>
        <nav>
            <div class="Logo">
                <img src="Images/Logo_2.png" />
            </div>
            <div class="Login">
                <a href="/Login.aspx">Đăng nhập</a> / <a href="/Register.aspx">Đăng ký</a>

                <button onclick="test()" id="cart">
                    Giỏ hàng
                </button>
            </div>
            <div id="MyCart" class="cart" style="display: none">
                <div class="cart-content">
                    <div class="cart-header">
                        <h4 class="cart-title">Giỏ Hàng Của Bạn</h4>
                    </div>
                    <!--cart-content-->
                    <div class="cart-body">
                        <div class="cart-row">
                            <span class="cart-item cart-header cart-column">Sản Phẩm</span>
                            <span class="cart-price cart-header cart-column">Giá</span>
                            <span class="cart-quantity cart-header cart-column">Số Lượng</span>
                        </div>

                        <div class="cart-items">
                            <div class="cart-total">
                                <strong class="cart-total-title">Tổng Cộng: </strong>
                                <span class="cart-total-price">0 VNĐ</span>
                            </div>
                            <!--cart-total-->
                        </div>
                        <!--cart-item-->
                    </div>
                    <div class="cart-footer">
                        <button type="button" id="close-footer" class="btn close-footer">Đóng</button>
                        <button type="button" id="order" class="btn btn-primary order">Thanh Toán</button>
                    </div>
                    <!--cart-footer-->
                </div>
            </div>
        </nav>
        <hr />
        <div class="nav-content">
            <ul>
                <li><a href="Trangchu.aspx">Trang chủ</a></li>
                <li><a href="Sanpham.aspx">Sản Phẩm</a></li>
                <li><a href="#">Liên Hệ</a></li>
                <li><a href="#">Giới Thiệu</a></li>
                <li><a href="#">Blog</a></li>
            </ul>
        </div>
    </header>
    <hr />
    <form class="login-form" method="post" style="text-align:center">
        <center>
	        <h2>Thông tin đăng nhập</h2>
            <div class="main-login main-center">
                <form id="formlogin" class="form-horizontal" method="post">
                    <p style=" color: red">
                        <asp:Label ID="loidangnhap" runat="server"></asp:Label>
                    </p>

                    <div class="form-group">
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="icon-envelope-alt" aria-hidden="true"></i></span>
                                <input class="inputregister" type="name" id="email" name="email" placeholder="Nhập Email..." required="required" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="icon-lock" aria-hidden="true"></i></span>
                                <input class="inputregister" type="password" id="Password" name="Password" placeholder="Nhập Password..." required="required" />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <button type="submit" name="dangnhap" id="dangnhap" value="Đăng nhập" class="exclusive shopBtn" />Đăng nhập</button>
                        <button type="reset" name="reset" id="reset" value="Đặt lại" class="exclusive shopBtn" />Đặt lại</button>
                    </div>
                    <a href="Register.aspx">Chưa có tài khoản?</a>
                </form>
            </div>
        </center>
        
    </form>

    <hr />
    <footer>
        <div class="footer-item">
            <div class="img-footer">
                <img src="Images/Logo_2.png" />
            </div>
            <div>
                Bài làm bởi Nguyễn Bá Hà 
            </div>
            <div class="social-footer">
                <ul>
                    <li><a href="www.facebook.com"><img src="Images/Facebook.png" /></a></li>
                    <li><a href="www.twitter.com"><img src="Images/Twitter.png" /></a></li>
                </ul>
            </div>
        </div>
    </footer>
</body>
</html>
