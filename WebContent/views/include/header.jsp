<%@page import="poly.controller.HomeController"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<body>
	<div class="header">
		<jsp:include page="../include/menu.jsp"></jsp:include>

		<div class="header-two navbar navbar-default">
			<!--header-two-->
			<div class="container">
				<div class="nav navbar-nav logo wow zoomIn animated "
					data-wow-delay=".7s">
					<h1>
						<a href="index.htm">Ocean <b>Shoppe</b><span class="tag">Siêu
								thị với nhiều mặt hàng giá rẻ </span>
						</a>
					</h1>
				</div>
				<script>
    $("#search").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: '@Url.Action("GetSearchValue","Home")',
                dataType: "json",
                data: { search: $("#search").val() },
                success: function (data) {
                    response($.map(data, function (item) {
                        return { label: item.Name, value: item.Name };
                    }));
                },
                error: function (xhr, status, error) {
                    alert("Error");
                }
            });
        }
    });
</script>
				 <div class="header-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <a href="index.htm" class="logo"><img src="images/logo.png" alt=""></a>
                        </div>
                        <div class="col-md-9">
                            <form class="form-search" action="search.htm" method="get">
                                <input type="text" class="input-text" name="key" id="search"
                                 placeholder="Bạn cần tìm gì...">
                               <div class="dropdown">   
                                    <button type="button" class="btn" data-toggle="dropdown">Tất cả sản phẩm</button>
                                </div>
                                <button type="submit" class="btn btn-danger"  onclick="('');"><span class="fa fa-search"></span></button>
                            </form>
                            <div class="mini-cart">
                                <div class="top-cart-title">
                                    <a href="cart.html" id="menu-cart" class="dropdown-toggle" data-toggle="modal" 
                                    data-target="#myModal" data-toggle="dropdown">
                                        <span
								id="count-cart"> 0 </span>-items
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div></div></div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog modal-lg">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Giỏ Hàng Của Bạn</h4>
			</div>
			<div class="modal-body">
				<table class="table table-inverse" id="table-products">
					<thead>
						<tr
							style="color: blue; font-family: 'ambleregular'; font-weight: bold">
							<th class="text-center">Id</th>
							<th class="text-center">Name</th>
							<th class="text-center">Price</th>
							<th class="text-center">Quantity</th>
							<th class="text-center">Total</th>
							<th class="text-center">Xóa</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</div>
			<div class="modal-footer">
				<div class="row">
					<div class="col-md-6">
						<div id="tonghoadon" style="float: left">

							<b style="margin-right: 20px">Tổng Tiền : </b> <span
								id="tongtiencart"
								style="color: red; margin-right: 20px; font-size: 18px"></span>
							<a href="Your-Cart.htm"
								style="padding: 10px 40px; background-color: #384044; color: #FFF">
								Thanh Toán</a>
						</div>
					</div>
					<div class="col-md-6">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>