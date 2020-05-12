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
																	dữ liệu doanh nghiệp</a></li>
														</ul>
														<div class="tab-content">
															<div id="home" class="tab-pane fade in active">
																<div class="forms">
																	<div class="form-grids widget-shadow"
																		data-example-id="basic-forms">
																		<div class="form-body">
																			<form:form id="formItem"
																				action="khac/themdoitac.htm" method="post"
																				modelAttribute="doitac1"
																				enctype="multipart/form-data">
																				<input style="display: none;" name="iduser"
																					value="${useradmin.id }" />
																					<p style="color: red;">${message }</p>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tên doanh nghiệp:</label>
																					<form:input type="text" name="name" value="" maxlength="100"
																						placeholder="Tên đối tác" class="form-control"
																						path="name" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Địa chỉ Làm việc:</label>
																					<form:input type="text" name="address" value="" maxlength="100"
																						placeholder="Địa chỉ " class="form-control"
																						path="address" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Số điện thoại:</label>
																					<form:input class="form-control edited"
																						id="form_control_1" path="phone" placeholder="Số điện thoại "
																						 name="phone"/>
																				</div>
																					<div class="form-group">
																					<label for="exampleInputEmail1">Tóm tắt-Mô tả:</label>
																					<form:input type="text" name="Description" value="" maxlength="600"
																						placeholder="Link kết nối" class="form-control"
																						path="Description" />
																				</div>
																				<form:button type="submit"
																					class="btn btn-default w3ls-button">Submit</form:button>
																					<a href="khac/doitac.htm" class="btn btn-default w3ls-button">Quay Lại</a>
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
<script type="text/javascript">
	$(function() {
		$("#register").validate({
			rules : {
				username : {
					required : true
				},
				email : {
					email : true,
					required : true
				},
				pwd : {
					required : true,
					minlength : 10
				},
				pwdcf : {
					required : true,
					minlength : 10
				},
				fullname : {
					required : true
				}
			},
			messages : {
				username : {
					required : '<"Tài khoản không được trống!"/>'
				},
				pwd : {
					required : '<"Mật khẩu không được trống!"/>',
					minlength : '<"Mật khẩu phải có ít nhất 6 kí tự"/>'
				},
				pwdcf : {
					required : '<"Mật khẩu phải giống nhau!"/>',
					minlength : '<"Mật khẩu phải có ít nhất 6 kí tự"/>'
				},

				email : {
					email : '<"Email không được trống!"/>',
					required : '<"Email không được trống!"/>'
				},
				fullname : {
					required : '<"Họ và tên không được trống!"/>'
				}
			}
		});
	});
</script>
			<jsp:include page="../admin/head.jsp"></jsp:include>
		</c:when>
	</c:choose>
</body>
</html>