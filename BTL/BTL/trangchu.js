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