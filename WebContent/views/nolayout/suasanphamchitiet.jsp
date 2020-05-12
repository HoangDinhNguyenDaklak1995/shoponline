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
	<div class="container body">
		<div class="main_container">
			<jsp:include page="../admin/header.jsp"></jsp:include>
			<div class="right_col" role="main">
				<c:if test="${ useradmin.roles.id == 1 || useradmin.roles.id == 2}">
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
														<li class="active"><a data-toggle="tab" href="#home">Sửa
																sản phẩm sale</a></li>
													</ul>

													<div class="tab-content">
														<div id="home" class="tab-pane fade in active">
															<div class="forms">
																<div class="form-grids widget-shadow"
																	data-example-id="basic-forms">
																	<div class="form-body">
																		<form:form id="formItem" action="sanpham/updatesanphamchitiet.htm"
																			method="post" modelAttribute="sanphamchitietsedit"
																			enctype="multipart/form-data">
																			<form:input style="display:none;" name="idchitiet" path="idchitiet"
																				cssClass="form-control"></form:input>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Tên sản phẩm
																					phục vụ:</label>
																				<form:input type="text" value=""
																					placeholder="Tensanphamchitet" class="form-control"
																					path="Tensanphamchitet" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Giá Bán phục
																					vụ:</label>
																				<form:input type="text" value=""
																					placeholder="giabanchitiet" class="form-control"
																					path="giabanchitiet" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Giảm giá
																					phục vụ:</label>
																				<form:input type="text" value=""
																					placeholder="giamgiachitiet " class="form-control"
																					path="giamgiachitiet" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Số lượng sản
																					phẩm phục vụ:</label>
																				<form:input type="text" value=""
																					placeholder="soluongchitiet " class="form-control"
																					path="soluongchitiet" />
																			</div>
																			<div
																				class="form-group form-md-line-input  has-success">
																				<label class="exampleInputEmail1">Ảnh sản
																					phẩm phục vụ:</label>
																				<div class="form-group">
																					<img style="width: 20%; height: 20%;"
																						class="img-thumbnail"
																						src="files/sanpham/${sanphamchitietsedit.img }" />
																					<form:input name="img" type="file"
																						class="form-control" id="form_control_1"
																						path="img" />

																					<div class="form-control-focus"></div>
																				</div>
																			</div>
                                                                                  <div class="form-group form-md-line-input">
																				<label style="padding-left: 0px;"
																					class="col-md-2 control-label" for="form_control_1">Trạng
																					Thái</label>
																				<div class="col-md-10">
																					<div class="md-radio-list">
																						<c:choose>
																							<c:when test="${sanphamchitietsedit.trangthai == true }">
																								<div class="md-radio has-success">
																									<input value="true" type="radio" id="radio53"
																										name="radio2" class="md-radiobtn" checked>
																									<label for="radio53"> <span></span> <span
																										class="check"></span> <span class="box"></span>
																										Kích Hoạt
																									</label>
																								</div>
																								<div class="md-radio has-error">
																									<input value="false" type="radio" id="radio54"
																										name="radio2" class="md-radiobtn"> <label
																										for="radio54"> <span></span> <span
																										class="check"></span> <span class="box"></span>
																										Khóa
																									</label>
																								</div>
																							</c:when>
																							<c:otherwise>
																								<div class="md-radio has-success">
																									<input value="true" type="radio" id="radio53"
																										name="radio2" class="md-radiobtn"> <label
																										for="radio53"> <span></span> <span
																										class="check"></span> <span class="box"></span>
																										Kích Hoạt
																									</label>
																								</div>
																								<div class="md-radio has-error">
																									<input value="false" type="radio" id="radio54"
																										name="radio2" class="md-radiobtn" checked>
																									<label for="radio54"> <span></span> <span
																										class="check"></span> <span class="box"></span>
																										Khóa
																									</label>
																								</div>
																							</c:otherwise>
																						</c:choose>
																					</div>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Tiêu đề:</label>
																				<form:input type="text" value=""
																					placeholder="giabanchitiet" class="form-control"
																					path="Noidung" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Nội dung:</label>
																				<form:textarea type="text" value=""
																					placeholder="giabanchitiet" class="form-control ckeditor"
																					path="Noidunglon" />
																			</div>
																			<button type="submit"
																				class="btn btn-default w3ls-button">Submit</button>
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
				</c:if>
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
</body>
</html>