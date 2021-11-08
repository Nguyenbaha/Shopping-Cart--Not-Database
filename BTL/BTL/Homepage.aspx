<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="BTL.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
    <link rel="stylesheet" href="homepage.css"/>
    <link rel="stylesheet" href="giohang.css"/>
    <script type="text/javascript" src="trangchu.js" async></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <!--Header-->
    <header>
        <nav>
            <div class="Logo">
                <img src="Images/Logo_2.png" />
            </div>
            <div class="Login">
                <asp:Label ID="name" runat="server">Xin chào <%=Session["name"]%>  /</asp:Label> 
                <a id="exit" href="Trangchu.aspx">Thoát</a>

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
                            
                        </div>  <!--cart-item-->
                        <div class="cart-total">
                                <strong class="cart-total-title">Tổng Cộng: </strong>
                                <span class="cart-total-price">0 VNĐ</span>
                            </div>
                            <!--cart-total-->
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
                    <li><a href="Homepage.aspx">Trang chủ</a></li>
                    <li><a href="Sanpham1.aspx">Sản Phẩm</a></li>
                    <li><a href="#bm">Liên Hệ</a></li>
                    <li><a href="#bm">Giới Thiệu</a></li>
                    <li><a href="#bm">Blog</a></li>
                </ul>
        </div>
    </header>
    <hr />
    <!--Main Contain-->
    <div class="main-contain">
        <div class="banner">
            <img src="Images/banner.png" />
        </div>
        <div class="hotProduct">
            <center>
                <h3>Sản phẩm hot</h3>
                <hr width="40%"/>
            </center>
            <div class="product">
            <ul>
                <li class="product-content">
                    <div class="product-content-img">
                        <img class="img-product" src="Images/Product/Product_1.jpg" />
                    </div>
                    <div class="product-detail">
                        <h4 class="product-detail-h4">Ví Da</h4>
                        <div class="product-content-detail">
                            <div class="price">
                                <span class="money">300000đ</span>
                            </div>

                            <button type="button" class="btnThem" onclick="add()">Thêm vào giỏ hàng</button>
                        </div>
                    </div>
                </li> <!--Product 1-->

                <li class="product-content">
                    <div class="product-content-img">
                        <img class="img-product" src="Images/Product/Product_2.jpg" />
                    </div>
                    <div class="product-detail">
                        <h4 class="product-detail-h4">Card Holder Classic</h4>
                        <div class="product-content-detail">
                            <div class="price">
                                <span class="money">350000đ</span>
                            </div>
                            <button type="button" class="btnThem" onclick="add()">Thêm vào giỏ hàng</button>
                        </div>
                    </div>
                </li> <!--Product 2-->

                <li class="product-content">
                    <div class="product-content-img">
                        <img class="img-product" src="Images/Product/Product_3.jpg" />
                    </div>
                    <div class="product-detail">
                        <h4 class="product-detail-h4">Balo Mini Classic</h4>
                        <div class="product-content-detail">
                            <div class="price">
                                <span class="money">180000đ</span>
                            </div>

                            <button type="button" class="btnThem" onclick="add()">Thêm vào giỏ hàng</button>
                        </div>
                    </div>
                </li> <!--Product 3-->

                <li class="product-content">
                    <div class="product-content-img">
                        <img class="img-product" src="Images/Product/Product_4.jpg" />
                    </div>
                    <div class="product-detail">
                        <h4 class="product-detail-h4">Ví Vải Classic</h4>
                        <div class="product-content-detail">
                            <div class="price">
                                <span class="money">250000đ</span>
                            </div>

                            <button type="button" class="btnThem" onclick="add()">Thêm vào giỏ hàng</button>
                        </div>
                    </div>
                </li> <!--Product 4-->
                <li class="product-content">
                    <div class="product-content-img">
                        <img class="img-product" src="Images/Product/Product_9.jpg" />
                    </div>
                    <div class="product-detail">
                        <h4 class="product-detail-h4">Ví Vải Dài Classic</h4>
                        <div class="product-content-detail">
                            <div class="price">
                                <span class="money">500000đ</span>
                            </div>

                            <button type="button" class="btnThem" onclick="add()">Thêm vào giỏ hàng</button>
                        </div>
                    </div>
                </li> <!--Product 5-->

                </ul>
        </div>
    </div>
    <!--Footer-->
    <hr />
    <footer id="bm">
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
