$(document).ready(function(){
	// Định nghĩa một mảng các phần tử sẽ bỏ vào giỏ hàng
    var shoppingCartItems = [];
    
    $(document).ready(function () {
        // Kiểm tra nếu đã có sessionStorage["shopping-cart-items"] hay chưa?
        if (sessionStorage["shopping-cart-items"] != null) {
            shoppingCartItems = JSON.parse(sessionStorage["shopping-cart-items"].toString());
            
        }
        
        // Hiển thị thông tin từ giỏ hàng
        displayShoppingCartItems();
    });


    // Sự kiện click các button có class=".add-to-cart"
    $(".add-to-cart").click(function () {
    	
    	$("body").animatescroll();
    	
        var button = $(this); // Lấy đối tượng button mà người dùng click       
        var id = button.attr("id"); // id của sản phẩm là id của button
        var images = button.attr("data-image");
        var name = button.attr("data-name"); // name của sản phẩm là thuộc tính data-name của button
        var price = button.attr("data-price"); // price của sản phẩm là thuộc tính data-price của button
        var quantity = 1; // Số lượng
        var item = {
            id: id,
            image: images,
            name: name,
            price: price,
            quantity: quantity
        }; 
        var exists = false;
        if (shoppingCartItems.length > 0) {
            $.each(shoppingCartItems, function (index, value) {
                // Nếu mặt hàng đã tồn tại trong giỏ hàng thì chỉ cần tăng số lượng mặt hàng đó trong giỏ hàng.
                if (value.id == item.id) {
                    value.quantity++;
                    exists = true;
                    return false;
                }
            });
           
        }
        // Nếu mặt hàng chưa tồn tại trong giỏ hàng thì bổ sung vào mảng
        if (!exists) {
            shoppingCartItems.push(item);
          
        }
        // Lưu thông tin vào sessionStorage
        sessionStorage["shopping-cart-items"] = JSON.stringify(shoppingCartItems); // Chuyển thông tin mảng shoppingCartItems sang JSON trước khi lưu vào sessionStorage
        // Gọi hàm hiển thị giỏ hàng
        
        displayShoppingCartItems();
        
    });
    // Xóa hết giỏ hàng shoppingCartItems
    function dele(key) {
    	if (shoppingCartItems.length > 0) {
            $.each(shoppingCartItems, function (index, value) {
                // Nếu mặt hàng đã tồn tại trong giỏ hàng thì chỉ cần tăng số lượng mặt hàng đó trong giỏ hàng.
                if (value.id == key) {
                	shoppingCartItems.splice(index,1);
                }
                
             // Lưu thông tin vào sessionStorage
                tongcart();
                
                $("#demo").val(sessionStorage["shopping-cart-items"]);
                sessionStorage["shopping-cart-items"] = JSON.stringify(shoppingCartItems);
                // Chuyển thông tin mảng shoppingCartItems sang JSON trước khi lưu vào sessionStorage
                tonghd();
            });
            
        }
    	   	  	
        // Gọi hàm hiển thị giỏ hàng
        displayShoppingCartItems();
       
    };
    // Xóa Toàn bộ giỏ hàng
    $("#button-clear").click(function () {
        shoppingCartItems = [];
        sessionStorage["shopping-cart-items"] = JSON.stringify(shoppingCartItems);
        $("#table-products > tbody").html("");
    });
    // Hiển thị giỏ hàng ra table
    function displayShoppingCartItems() {
    	
        if (sessionStorage["shopping-cart-items"] != null) {
            shoppingCartItems = JSON.parse(sessionStorage["shopping-cart-items"].toString()); // Chuyển thông tin từ JSON trong sessionStorage sang mảng shoppingCartItems.
             
            $("#table-products > tbody").html("");
            $("#table-carts > tbody").html("");
            // Duyệt qua mảng shoppingCartItems để append từng item dòng vào table
           
            $.each(shoppingCartItems, function (index, item) {
            	var html="";
                var htmlString = "";
                htmlString += "<tr id='Court-tr'>";
                htmlString += "<td style='text-align: center'><img src='"+item.image+"' width='60px' /></td>";
                htmlString += "<td style='text-align: center'>" + item.name + "</td>";
                htmlString += "<td style='text-align: center'>" + item.price + "</td>";
                htmlString += "<td style='text-align: center'>" + item.quantity + "</td>";
                htmlString += "<td style='text-align: center'>" + item.price * item.quantity + "</td>";
                htmlString += "<td style='text-align: center'><button type='button' id='" + item.id + "' class='btn-xs btn-danger button-clear-item'>"+"Xóa"+"</button></td>";
                htmlString += "</tr>";
                html += "<tr>";
                html += "<td><b>" + item.name + "</b></td>";
                html += "<td>" + item.quantity + "</td>";
                html += "<td>" + item.price * item.quantity + "</td>";
                html += "</tr>";
                $("#table-products > tbody:last").append(htmlString);
                $("#table-carts > tbody:last").append(html);
                
            });
            
        } 
        $(".button-clear-item").click(function () {
        	$(this).closest("tr").remove();
       	 	var button = $(this); // Lấy đối tượng button mà người dùng click       
            var id = button.attr("id"); // id của sản phẩm là id của button
            dele(id);
            if (shoppingCartItems.length == 0) {
                $("#tongtienhd").html("0");
                $("#tongtiencart").html("0");
                $("#tienhd").val("");
            }
       });
        tongcart();
        tonghd();
        $("#demo").val(sessionStorage["shopping-cart-items"]);
    }
    function tongcart(){
    	 var a = $("#table-products").find("tr").length - 1;
    	 $("#count-cart").html("<b>"+a+"</b>");
    }
    function tonghd(){
    	var tong=0;
    	 if (sessionStorage["shopping-cart-items"] != null) {
    		 shoppingCartItems = JSON.parse(sessionStorage["shopping-cart-items"].toString());
    		 $.each(shoppingCartItems, function (index, item) {
    			 tong=tong+(item.price * item.quantity);
                 $("#tongtienhd").html(tong);
                 $("#tongtiencart").html(tong);
                 $("#tienhd").val(tong);
             });
    		 
    	 }
    	 else{
    		 $("#tongtienhd").html("0");
    		 $("#tongtiencart").html("0");
    		 $("#tienhd").val("");
    	 }
    }
});