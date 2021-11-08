<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BTL.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" href="trangchu.css" />
    <link rel="stylesheet" href="giohang.css" />
    <link rel="stylesheet" href="register.css" />
    
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
                <li><a href="#bm">Liên Hệ</a></li>
                <li><a href="#bm">Giới Thiệu</a></li>
                <li><a href="#bm">Blog</a></li>
            </ul>
        </div>
    </header>
    <hr />
    <div id="main-container">
        <center>
	        <h2 class="title">Tạo Tài Khoản</h2>
                <form id="form" method="post" runat="server"  onsubmit="return (check())"> 
                    <asp:Label ID="loi" style="color: red" runat="server"></asp:Label>
                    <div>
                        <input class="inputregister" type="name" id="nameRegister" name="nameRegister" placeholder="Nhập Họ Tên..." required="required">
                    </div>
                    <div>
                        <input  class="inputregister" type="name" id="emailRegister" name="emailRegister" placeholder="Nhập Email..." required="required"/>
                    </div>
                    <div>
                        <input  class="inputregister" type="password" id="PasswordRegister" name="PasswordRegister" placeholder="Nhập Password..." required="required" />
                    </div>
                    <div>
                        <input class="inputregister" type="password" id="RePasswordRegister" name="RePasswordRegister" placeholder="Nhập Lại Password..." required="required" />
                    </div>
                    <div>
                        <input class="inputregister" type="date" id="dobRegister" name="dobRegister" required="required" />
                    </div>
 
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Đăng ký" onclick="btndangky_click"/>
                        <button type="reset" name="reset" id="reset" />Đặt lại</button>
                    </div>
                    <a href="Login.aspx">Đã có tài khoản?</a>
                </form>
         </center>
    </div>
    <hr class="hr"/>
    <footer id="bm">
        <div class="footer-item">
            <div class="img-footer">
                <img src="Images/Logo_2.png" />
            </div>
            <div>
                Bài làm bởi Nguyễn  Bá Hà
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
