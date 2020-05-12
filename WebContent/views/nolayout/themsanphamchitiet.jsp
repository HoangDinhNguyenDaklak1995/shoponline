<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style type="text/css">
.person1 {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
	margin-right: 250px;
}

.img-circle {
	width: 150px;
}

.person:hover {
	border-color: #f1f1f1;
}
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>admin form</title>
<jsp:include page="../admin/headtagtheme.jsp"></jsp:include>
</head>
<body class="nav-md">
	<c:choose>
		<c:when test="${useradmin.roles.id == 1 || useradmin.roles.id == 2 }">
			<div class="container body">
				<div class="main_container">
					<jsp:include page="../admin/header.jsp"></jsp:include>
					<div class="right_col" role="main">
						<section class="wrapper scrollable">
							<nav class="user-menu">
								<a href="javascript:;" class="main-menu-access"> <i
									class="icon-proton-logo"></i> <i class="icon-reorder"></i>
								</a>
							</nav>
							<div class="main-grid">
								<div class="social grid">
									<div class="grid-info">
										<div class="container-fluid">
											<div class="row content">
												<div class="col-sm-12">
													<div class="container-fluid">
														<ul class="nav nav-tabs">	
																	<li class="active"><a data-toggle="tab" href="#home">Thêm
																	dữ liệu sản phẩm chi tiết</a></li>
														</ul>
														<div class="tab-content">
															<div id="home" class="tab-pane fade in active">
																<div class="forms">
																	<div class="form-grids widget-shadow"
																		data-example-id="basic-forms">
																		<div class="form-body">
																			<form:form id="formItem"
																				action="sanpham/themsanphamchitiet.htm" method="post"
																				modelAttribute="sanphamchitiet1"
																				enctype="multipart/form-data">
																				<input style="display: none;" name="iduser"
																					value="${useradmin.id }" />
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tên sản
																						phẩm chi tiết:</label>
																					<form:input type="text" name="Tensanphamchitet"
																						value="" maxlength="100"
																						onKeyDown="textCounter(this,100);"
																						onkeyup="ChangeToSlug();textCounter(this,'q17length' ,100)"
																						placeholder="Tên sản phẩm chi tiết"
																						class="form-control" path="Tensanphamchitet" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Giá bán chi tiết:</label>
																					<form:input type="text" name="giabanchitiet"
																						maxlength="10" placeholder="Giá bán"
																						class="form-control" path="giabanchitiet" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Giá nhập chi tiết:</label>
																					<form:input type="text" name="gianhapchitiet"
																						maxlength="10" placeholder="Giá nhập"
																						class="form-control" path="gianhapchitiet" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Giá ưu đãi chi tiết:</label>
																					<form:input type="text" name="giamgiachitiet"
																						maxlength="2" placeholder="Giá ưu đãi"
																						class="form-control" path="giamgiachitiet" />
																				</div>
																				<div class="form-group form-md-line-input ">
																					<label for="exampleInputEmail1">Ảnh đại
																						diện:</label>
																					<form:input name="img" type="file"
																						class="form-control" id="form_control_1"
																						path="img" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Số Lượng chi tiết:</label>
																					<form:input type="text" name="soluongchitiet"
																						maxlength="10" placeholder="Giá ưu đãi"
																						class="form-control" path="soluongchitiet" />
																				</div>	
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tiêu đề:</label>
																					<form:input type="text" name="Noidung" maxlength="30"
																						placeholder="Nội dung sản phẩm" class="form-control"
																						path="Noidung" />
																				</div>	
																				<div class="form-group">
																					<label for="exampleInputEmail1"> Nội dung:</label>
																					<form:input type="text" name="Noidunglon" maxlength="300"
																						placeholder="Nội dung lớn" class="form-control"
																						path="Noidunglon" />
																				</div>													
																				<form:button type="submit"
																					class="btn btn-default w3ls-button">Submit</form:button>
																				<a href="sanpham/sanphamchitiet.htm"
																					class="btn btn-default w3ls-button">Quay Lại</a>
																			</form:form>

																		</div>
																	</div>
																</div>
															</div>			
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
					<footer>
						<div class="pull-right">
							Gentelella - Bootstrap Admin Template by <a
								href="https://colorlib.com">Colorlib</a>
						</div>
						<div class="clearfix"></div>
					</footer>
				</div>
			</div>

			<jsp:include page="../admin/head.jsp"></jsp:include>
		</c:when>
		<c:otherwise>
			<jsp:forward page="admin/error.htm"></jsp:forward>
		</c:otherwise>
	</c:choose>
</body>
</html>