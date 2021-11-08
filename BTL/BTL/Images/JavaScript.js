if (document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready);
} else {
    ready();
}

function ready() {
    var removeCartItem = document.getElementsByClassName('btn-danger');
    for (var i = 0; i < removeCartItem.length; i++) {
        var button = removeCartItem[i];
        button.addEventListener('click', xoa);
    }

    var quantityInput = document.getElementsByClassName('cart-quantity-input');
    for (var i = 0; i < quantityInput.length; i++) {
        var button = quantityInput[i];
        button.addEventListener('change', quantityChanged);
    }

    var addCartItem = document.getElementsByClassName('btnThem');
    for (var i = 0; i < addCartItem.length; i++) {
        var button = addCartItem[i];
        button.addEventListener('click', add);
    }

    document.getElementById('order').addEventListener('click', purchaseClicked);
}

function test() {
    var cart = document.getElementById("MyCart");
    var btn = document.getElementById("cart");
    var close = document.getElementById("close-footer");
    var order = document.getElementById("order");
    btn.onclick = function () {
        cart.style.display = "block";
    }
    close.onclick = function () {
        cart.style.display = "none";
    }
    order.onclick = function () {
        alert('Cảm ơn đã mua hàng');
        cart.style.display = "none";
    }
    window.onclick = function (event) {
        if (event.target == cart) {
            cart.style.display = "none";
        }
    }
} // Đóng mở giỏ hàng

//
function purchaseClicked() {

    var cartItem = document.getElementsByClassName('cart-items')[0];
    if (cartItem.innerText == '') {
        alert('Giỏ hàng của bạn đang trống');
    }
    else {
        alert("Thanh toán thành công !!!");
        while (cartItem.hasChildNodes()) {
            cartItem.removeChild(cartItem.firstChild);

        }
        updateCart();
    }
}
//

function xoa(event) {
    var buttonClicked = event.target;
    buttonClicked.parentElement.parentElement.remove();
    updateCart();
} // Xoá item trong giỏ hàng

function quantityChanged(event) {
    var input = event.target;


    if (isNaN(input.value) || input.value <= 0) {
        input.value = 1;
    }


    updateCart();
} // Update giỏ hàng hàng khi thay đổi số lượng

function add(event) {
    var buttonAdd = event.target;
    var cartItem = buttonAdd.parentElement.parentElement.parentElement;
    var title = cartItem.getElementsByClassName('product-detail-h4')[0].innerText;
    var price = cartItem.getElementsByClassName('money')[0].innerText;
    var image = cartItem.getElementsByClassName('img-product')[0].src;
    addItemToCart(title, price, image);

    updateCart();
} // Add item

function addItemToCart(title, price, image) {

    var cartRow = document.createElement('div');
    var cartTotal = document.getElementsByClassName('cart-total')[0];
    cartRow.classList.add('cart-row');
    var cartItem = document.getElementsByClassName('cart-items')[0];

    var cartItemName = cartItem.getElementsByClassName('cart-item-title');
    for (var i = 0; i < cartItemName.length; i++) {
        if (cartItemName[i].innerText == title) {
            alert('Sản phẩm đã có trong giỏ hàng, mời kiểm tra lại');
            return;
        }
    }

    var cartRowContent = `
    <div class="cart-item cart-column">
       <img class="cart-item-image" src="${image}" />
       <span class="cart-item-title">${title}</span>
    </div>
    <span class="cart-price cart-column">${price}</span>
    <div class="cart-quantity cart-column">
       <input class="cart-quantity-input" type="number" value="1"  />
       <button class="btn btn-danger" type="button" onclick="xoa()">Xóa</button>
    </div>`
    cartRow.innerHTML = cartRowContent;
    cartItem.appendChild(cartRow);
    cartRow.getElementsByClassName('btn-danger')[0].addEventListener('click', xoa);
    cartRow.getElementsByClassName('cart-quantity-input')[0].addEventListener('click', quantityChanged);
    alert('Thêm thành công');
}

function updateCart() {
    var cartItemContainer = document.getElementsByClassName('cart-items')[0];
    var cartRows = cartItemContainer.getElementsByClassName('cart-row');
    var total = 0;
    for (var i = 0; i < cartRows.length; i++) {
        var cartRow = cartRows[i];
        var priceElement = cartRow.getElementsByClassName('cart-price')[0];
        var quantityElement = cartRow.getElementsByClassName('cart-quantity-input')
        [0];
        var price = parseFloat(priceElement.innerText.replace('đ', ''));
        var quantity = quantityElement.value;
        total = total + (price * quantity);
    }
    document.getElementsByClassName('cart-total-price')[0].innerText = total + '  VNĐ'

} // Update giỏ hàng

// homepage
/*.product-content-img:hover{
    transform: scale(1.2);
}*/
/*@media screen and (max-width: 768px) {
    .main-contain {
        display: block;
    }

    .hotProduct::after {
        clear: both;
        content: "";
        display: table;
    }

    .search-bar {
        margin-bottom: 20px;
    }

    .product img {
        width: 100%;
    }

    .Logo img {
        width: 150px;
    }

    .nav-content ul li {
        display: block;
    }

    .cart-content {
        width: 100%;
    }

    #name, #exit {
        font-size: 13px;
    }

    #cart {
        font-size: 13px;
        text-align: center;
    }
} */


// trangchu.css
/*Responsive*/

/*@media screen and (max-width: 768px) {
    .main-contain {
        display: block;
    }

    .hotProduct::after {
        clear: both;
        content: "";
        display: table;
    }

    .search-bar {
        margin-bottom: 20px;
    }

    .product img {
        width: 100%;
    }

    .Logo img {
        width: 150px;
    }

    .nav-content ul li {
        display: block;
    }

    .cart-content {
        width: 100%;
    }
}*/

/// reg
/*
 <script>
        function check() {
            var DateTime = document.getElementById('dobRegister');
            var getName = document.getElementById('nameRegister');
            var getPassword = document.getElementById('PasswordRegister');
            var getDate = new Date(DateTime.value);
            var getNowDate = new Date();
            if (getNowDate - getDate < 0) {
                alert('Ngay sinh phai nho hon ngay hien tai');
                DateTime.focus();
                return false;
            }
            if (getPassword.value.length < 8) {
                alert('Mật khẩu phải có từ 8 ký tự trở lên');
                getPassword.focus();
                return false;
            }
            if (getPassword.value.search(/[a-z]/i) < 0) {
                alert('Mật khẩu phải có ít nhất 1 chữ cái');
                getPassword.focus();
                return false;
            }
            if (getPassword.value.search(/[0-9]/) < 0) {
                alert('Mật khẩu phải ít nhất 1 số');
                getPassword.focus();
                return false;
            }
            var test = '!@#$%^&%^&*()';
            var btest;
            for (var i = 0; i < test.length; i++) {
                if (getName.value.indexOf(test[i]) > -1) {
                    btest = true;
                    break;
                }
                else {
                    btest = false;
                }
            }
            if (btest == true) {
                alert('Tên k được chứa ký tự đặc biệt');
                getName.focus();
                return false;
            }
            return true;
        }
    </script>
    */