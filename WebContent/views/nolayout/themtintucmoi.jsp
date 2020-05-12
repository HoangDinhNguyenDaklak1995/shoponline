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
																	dữ liệu tin tức mới</a></li>
														</ul>
														<div class="tab-content">
															<div id="home" class="tab-pane fade in active">
																<div class="forms">
																	<div class="form-grids widget-shadow"
																		data-example-id="basic-forms">
																		<div class="form-body">
																			<form:form id="formItem"
																				action="tintuc/themtintucmoi.htm" method="post"
																				modelAttribute="quankystin"
																				enctype="multipart/form-data">
																				<input style="display: none;" name="iduser"
																					value="${useradmin.id }" />
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tên sản phẩm:</label>
																					<form:input type="text" name="tieude" value="" maxlength="100"
																						onKeyDown="textCounter(this,100);" 
																						onkeyup="ChangeToSlug();textCounter(this,'q17length' ,100)"
																						placeholder="Tiêu đề" class="form-control"
																						path="tieude" />
																				</div>	
																				<div class="form-group form-md-line-input ">
																					<label for="exampleInputEmail1">Hình ảnh:</label>
																					<form:input name="images" type="file"
																						class="form-control" id="form_control_1"
																						path="images" />
																				</div>
																				
																				<div class="form-group">
																					<label for="exampleInputEmail1">Mô tả ảnh:</label>
																					<form:input type="text" name="motangan" maxlength="50"
																						placeholder="mô tả ảnh" class="form-control"
																						path="motangan" />
																				</div>
																				<div class="form-group form-md-line-input ">
																					<label for="exampleInputEmail1">Hình ảnh sản phẩm giới thiệu:</label>
																					<form:input name="images1" type="file"
																						class="form-control" id="form_control_1"
																						path="images1" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Mô tả ảnh 1:</label>
																					<form:input type="text" name="motaanh1" maxlength="100000"
																						placeholder="Mô tả ảnh" class="form-control"
																						path="motaanh1" />
																				</div>
																				<div class="form-group form-md-line-input ">
																					<label for="exampleInputEmail1">Hình ảnh sản phẩm mới:</label>
																					<form:input name="images2" type="file"
																						class="form-control" id="form_control_1"
																						path="images2" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Mô tả chi tiết ảnh:</label>
																					<form:input type="text" name="motaanh2" maxlength="200000"
																						placeholder=" ưu đãi" class="form-control"
																						path="motaanh2" />
																				</div>
																				<div class="form-group form-md-line-input ">
																					<label for="exampleInputEmail1">Hình ảnh:</label>
																					<form:input name="images3" type="file"
																						class="form-control" id="form_control_1"
																						path="images3" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Mô tả ảnh 3:</label>
																					<form:input type="text" name="motaanh3" maxlength="100000"
																						placeholder="Mô tả ảnh hiện thị" class="form-control"
																						path="motaanh3" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Nội dung chi tiết:</label>
																					<form:input type="text" name="noidung" maxlength="100000"
																						placeholder="Nội dung" class="form-control"
																						path="noidung" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Mô tả:</label>
																					<form:input type="text" name="mota" maxlength="100000"
																						placeholder="Mô tả" class="form-control"
																						path="mota" />
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
							 <a href="https://colorlib.com"></a>
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