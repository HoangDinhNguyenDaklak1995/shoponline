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
																thông tin sản phẩm</a></li>
													</ul>
                                                  <span style="color: black;" class="active">${message }</span>
													<div class="tab-content">
														<div id="home" class="tab-pane fade in active">
															<div class="forms">
																<div class="form-grids widget-shadow"
																	data-example-id="basic-forms">
																	<div class="form-body">
																		<form:form id="formItem" action="admin/update.htm"
																			method="post" modelAttribute="sanphamedit"
																			enctype="multipart/form-data">
																			<form:input style="display:none;" name="id"
																				path="id" cssClass="form-control"></form:input>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Tên sản
																					phẩm:</label>
																				<form:input type="text" value="" name="name"
																					placeholder="Tên sản phẩm" class="form-control"
																					path="name" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Loại sản
																					phẩm:</label>
																				<form:select class="form-control edited"
																					name="Categoryproduct" id="form_control_1"
																					path="Categoryproduct" items="${listloaisanpham }"
																					itemValue="id" itemLabel="name" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputPassword1">Giá nhập:</label>
																				<form:input type="text" placeholder="Giá nhập"
																					class="form-control" name="gianhap" path="gianhap" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputPassword1">Giá bán:</label>
																				<form:input type="text" placeholder="Giá bán"
																					class="form-control" path="price" name="price" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputPassword1">Giá ưu
																					đãi:</label>
																				<form:input type="text" placeholder="Giá ưu đãi"
																					class="form-control" path="saleprice"
																					name="saleprice" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputPassword1">Số Lượng:</label>
																				<form:input type="text" placeholder="Số Lượng"
																					class="form-control" path="numbers"
																					name="numbers" />
																			</div>
																			<div class="container">
																				<div class="form-group">
																					<label for="exampleInputPassword1">Ngày
																						Đăng ký:</label> <input class="form-control"
																						id="disabledInput" type="text"
																						value="${sanphamedit.createDate }"
																						placeholder="Disabled input here..." disabled>
																				</div>
																			</div>
																			<div class="form-group form-md-line-input">
																				<label style="padding-left: 0px;"
																					class="col-md-2 control-label" for="form_control_1">Trạng
																					Thái:</label>
																				<div class="col-md-10">
																					<div class="md-radio-list">
																						<c:choose>
																							<c:when test="${sanphamedit.status == true }">
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
																				<div class="form-group">
																					<label for="exampleInputEmail1">Nhà cung
																						cấp:</label>
																					<form:select class="form-control edited"
																						id="form_control_1" path="doitac"
																						name="doitac" items="${listdoitac }"
																						itemValue="Iddoitac" itemLabel="name" />
																				</div>
																				<div
																					class="form-group form-md-line-input  has-success">
																					<label class="exampleInputEmail1">Hình ảnh:</label>
																					<div class="form-group">
																						<img style="width: 20%; height: 20%;"
																							class="img-thumbnail"
																							src="files/sanpham/${sanphamedit.img }" />		
																						<form:input name="img" type="file"
																							class="form-control" id="form_control_1"
																							path="img" />
																							
																						<div class="form-control-focus"></div>
																					</div>
																				</div>			<div
																					class="form-group form-md-line-input  has-success">
																					<label class="exampleInputEmail1">Hình ảnh:</label>
																					<div class="form-group">
																						<img style="width: 20%; height: 20%;"
																							class="img-thumbnail"
																							src="files/sanpham/${sanphamedit.img1 }" />
																						<form:input name="img1" type="file"
																							class="form-control" id="form_control_1"
																							path="img1" />
																							
																						<div class="form-control-focus"></div>
																					</div>
																				</div>	
																				<div
																					class="form-group form-md-line-input  has-success">
																					<label class="exampleInputEmail1">Hình ảnh:</label>
																					<div class="form-group">
																						<img style="width: 20%; height: 20%;"
																							class="img-thumbnail"
																							src="files/sanpham/${sanphamedit.img2 }" />
																						<form:input name="img2" type="file"
																							class="form-control" id="form_control_1"
																							path="img2" />
																							
																						<div class="form-control-focus"></div>
																					</div>
																				</div>	
																				<div
																					class="form-group form-md-line-input  has-success">
																					<label class="exampleInputEmail1">Hình ảnh:</label>
																					<div class="form-group">
																						<img style="width: 20%; height: 20%;"
																							class="img-thumbnail"
																							src="files/sanpham/${sanphamedit.img3 }" />
																						<form:input name="img3" type="file"
																							class="form-control" id="form_control_1"
																							path="img3" />
																							
																						<div class="form-control-focus"></div>
																					</div>
																				</div>	
																				<div class="form-group">
																				<label for="exampleInputPassword1">Mô tả :</label>
																				<form:input type="text" placeholder="Mô tả chi tiết"
																					class="form-control" path="Description"
																					name="Description" />
																			</div>		
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
	<c:otherwise>
		<jsp:forward page="admin/error.htm"></jsp:forward>
	</c:otherwise>
</body>
</html>