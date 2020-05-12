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
																	dữ liệu sản phẩm sale</a></li>
														</ul>
														<div class="tab-content">
															<div id="home" class="tab-pane fade in active">
																<div class="forms">
																	<div class="form-grids widget-shadow"
																		data-example-id="basic-forms">
																		<div class="form-body">
																			<form:form id="formItem"
																				action="sanpham/themsanphamsale.htm" method="post"
																				modelAttribute="sanphamsale1"
																				enctype="multipart/form-data">
																				<input style="display: none;" name="iduser"
																					value="${useradmin.id }" />
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tên sản
																						phẩm sale:</label>
																					<form:input type="text" name="tensanphamsale"
																						value="" maxlength="100"
																						onKeyDown="textCounter(this,100);"
																						onkeyup="ChangeToSlug();textCounter(this,'q17length' ,100)"
																						placeholder="Tên sản phẩm sale"
																						class="form-control" path="tensanphamsale" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Giá bán sale:</label>
																					<form:input type="text" name="giabansale"
																						maxlength="10" placeholder="Giá bán"
																						class="form-control" path="giabansale" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Giá nhập sale:</label>
																					<form:input type="text" name="gianhapsale"
																						maxlength="10" placeholder="Giá nhập"
																						class="form-control" path="gianhapsale" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Giá ưu đãi sale:</label>
																					<form:input type="text" name="giamgiasale"
																						maxlength="2" placeholder="Giá ưu đãi"
																						class="form-control" path="giamgiasale" />
																				</div>
																				<div class="form-group form-md-line-input ">
																					<label for="exampleInputEmail1">Ảnh đại
																						diện:</label>
																					<form:input name="anhsanphamsale" type="file"
																						class="form-control" id="form_control_1"
																						path="anhsanphamsale" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Số Lượng sale:</label>
																					<form:input type="text" name="soluongsale"
																						maxlength="10" placeholder="Giá ưu đãi"
																						class="form-control" path="soluongsale" />
																				</div>	
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tiêu đề:</label>
																					<form:input type="text" name="noidung"
																						maxlength="80" placeholder="Tiêu đề"
																						class="form-control" path="noidung" />
																				</div>		
																					<div class="form-group">
																					<label for="exampleInputEmail1">Nội dung sale:</label>
																					<form:textarea type="text" name="noidungsale"
																						maxlength="800" placeholder="Giá ưu đãi"
																						class="form-control ckeditor" path="noidungsale" />
																				</div>
																						<div class="form-group">
																					<label for="exampleInputEmail1">Nội dung lớn:</label>
																					<form:textarea type="text" name="noidunglon"
																						maxlength="800" placeholder="Nội dung "
																						class="form-control ckeditor" path="noidunglon" />
																				</div>											
																				<form:button type="submit"
																					class="btn btn-default w3ls-button">Submit</form:button>
																				<a href="sanpham/sanphamsale.htm"
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
							 <a
								href="https://colorlib.com"></a>
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