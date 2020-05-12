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
																	dữ liệu sản phẩm</a></li>
														</ul>
														<div class="tab-content">
															<div id="home" class="tab-pane fade in active">
																<div class="forms">
																	<div class="form-grids widget-shadow"
																		data-example-id="basic-forms">
																		<div class="form-body">
																			<form:form id="formItem"
																				action="admin/themsanpham.htm" method="post"
																				modelAttribute="sanpham1"
																				enctype="multipart/form-data">
																				<input style="display: none;" name="iduser"
																					value="${useradmin.id }" />
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tên sản
																						phẩm:</label>
																					<form:input type="text" name="name" value="" maxlength="100"
																						onKeyDown="textCounter(this,100);" 
																						onkeyup="ChangeToSlug();textCounter(this,'q17length' ,100)"
																						placeholder="Tên sản phẩm" class="form-control"
																						path="name" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Loại sản
																						phẩm:</label>
																					<form:select class="form-control edited"
																						id="form_control_1" path="Categoryproduct"
																						items="${listloaisanpham }" itemValue="id"
																						itemLabel="name" name="Categoryproduct"/>
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Nhà cung
																						cấp:</label>
																					<form:select class="form-control edited"
																						id="form_control_1" path="doitac"
																						name="doitac" items="${listdoitac }"
																						itemValue="Iddoitac" itemLabel="name" />
																				</div>
																				
																				<div class="form-group">
																					<label for="exampleInputEmail1">Giá nhập:</label>
																					<form:input type="text" name="gianhap" maxlength="10"
																						placeholder="Giá nhập" class="form-control"
																						path="gianhap" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Giá bán:</label>
																					<form:input type="text" name="price" maxlength="10"
																						placeholder="Giá bán" class="form-control"
																						path="price" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Số Lượng:</label>
																					<form:input type="text" name="numbers" maxlength="10"
																						placeholder="Giá ưu đãi" class="form-control"
																						path="numbers" />
																				</div>
																				<div class="container">
																					<div class="form-group" style="display: none;">
																						<label for="exampleInputPassword1">Mã Thông số:</label> 
																						<form:input class="form-control" type="text"
																							name="Id" path="Id"
																							placeholder="Disabled input here..." />
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Giá ưu đãi:</label>
																					<form:input type="text" name="saleprice" maxlength="2"
																						placeholder="Giá ưu đãi" class="form-control"
																						path="saleprice" />
																				</div>
																				<div class="form-group form-md-line-input ">
																					<label for="exampleInputEmail1">Hình ảnh:</label>
																					<form:input name="img" type="file"
																						class="form-control" id="form_control_1"
																						path="img" />
																				</div>
																				<div class="form-group form-md-line-input ">
																					<label for="exampleInputEmail1">anh nội dung1:</label>
																					<form:input name="img1" type="file"
																						class="form-control" id="form_control_1"
																						path="img1" />
																				</div>
																				<div class="form-group form-md-line-input ">
																					<label for="exampleInputEmail1">Hình ảnh 2:</label>
																					<form:input name="img2" type="file"
																						class="form-control" id="form_control_1"
																						path="img2" />
																				</div>
																				<div class="form-group form-md-line-input ">
																					<label for="exampleInputEmail1">Hình ảnh3:</label>
																					<form:input name="img3" type="file"
																						class="form-control" id="form_control_1"
																						path="img3" />
																				</div>
																				<form:button type="submit"
																					class="btn btn-default w3ls-button">Submit</form:button>
																					<a href="admin/sanpham.htm" class="btn btn-default w3ls-button">Quay Lại</a>
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
	</c:choose>
</body>
</html>