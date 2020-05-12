<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script src="//cdn.ckeditor.com/4.6.1/full/ckeditor.js"></script>
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
																	dữ liệu loại sản phẩm</a></li>
														</ul>
														<div class="tab-content">
															<div id="home" class="tab-pane fade in active">
																<div class="forms">
																	<div class="form-grids widget-shadow"
																		data-example-id="basic-forms">
																		<div class="form-body">
																			<form:form id="formItem"
																				action="khac/themloaisanpham.htm" method="post"
																				modelAttribute="quyenhan1">
																				<input style="display: none;" name="iduser"
																					value="${useradmin.id }" />
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tên loại sản phẩm:</label>
																					<form:input type="text" name="Name" value="" maxlength="100"
																						placeholder="Tên loại sản phẩm" class="form-control"
																						path="Name" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Menu loại sản phẩm:</label>
																					<form:input type="text" name="Subcategoryproduct" value="" maxlength="100"
																						placeholder="menu kết nối" class="form-control"
																						path="Subcategoryproduct"  />
																				</div>					
																					<div class="form-group">
																					<label for="exampleInputEmail1">Đường dẫn link:</label>
																					<form:input type="text" name="Url" value="" maxlength="600"
																						placeholder="Link kết nối" class="form-control"
																						path="Url" />
																				</div>	
																				<div class="form-group">
																					<label for="exampleInputEmail1">Mô tả:</label>
																					<form:input type="text" name="Status" value="" maxlength="600"
																						placeholder="Link kết nối" class="form-control"
																						path="Status" />
																				</div>
																				<form:button type="submit"
																					class="btn btn-default w3ls-button">Submit</form:button>
																					<a href="khac/loaisanpham.htm" class="btn btn-default w3ls-button">Quay Lại</a>
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
							 <a
								href="https://colorlib.com"></a>
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