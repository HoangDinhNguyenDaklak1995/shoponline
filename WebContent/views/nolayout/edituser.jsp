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
														<li class="active"><a data-toggle="tab" href="#home">Personal
																info</a></li>
														<li><a data-toggle="tab" href="#menu1">Avatar</a></li>
														<li><a data-toggle="tab" href="#menu2">Change
																Password</a></li>
													</ul>

													<div class="tab-content">
														<div id="home" class="tab-pane fade in active">
															<div class="forms">
																<div class="form-grids widget-shadow"
																	data-example-id="basic-forms">
																	<div class="form-body">
																		<form:form id="formItem" action="admin/updateuser.htm"
																			method="post" modelAttribute="usersedit"
																			enctype="multipart/form-data">
																			<form:input style="display:none;" name="idnew"
																				path="id" cssClass="form-control"></form:input>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Họ Và tên:</label>
																				<form:input type="text" value=""
																					placeholder="Fullname" class="form-control"
																					path="fullname" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Username:</label>
																				<form:input type="text" value=""
																					placeholder="User Name" class="form-control"
																					path="username" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputPassword1">Địa chỉ
																					Email:</label>
																				<form:input type="text" placeholder="Email"
																					class="form-control" path="email"
																					pattern="[a-zA-Z0-9._\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,4}"
																					title="Email phải có @" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputPassword1">Quyền:</label>
																				<form:select class="form-control edited"
																					id="form_control_1" path="roles"
																					items="${listquyen }" itemValue="id"
																					itemLabel="name" />
																			</div>
																			<div class="container">
																				<div class="form-group">
																					<label for="exampleInputPassword1">Ngày
																						Đăng ký:</label> <input class="form-control"
																						id="disabledInput" type="text"
																						value="${usersedit.createdate }"
																						placeholder="Disabled input here..." disabled>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="sel1">Address</label>
																				<form:input class="form-control" type="text"
																					placeholder="Address" path="address" name="address" />
																			</div>
																			<div class="form-group form-md-line-input">
																				<label style="padding-left: 0px;"
																					class="col-md-2 control-label" for="form_control_1">Trạng
																					Thái</label>
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
																			</div>
																			<button type="submit"
																				class="btn btn-default w3ls-button">Submit</button>
																		</form:form>
																	</div>
																</div>
															</div>
														</div>
														<div id="menu1" class="tab-pane fade">
															<form:form modelAttribute="usersedit"
																enctype="multipart/form-data"
																action="admin/updateuserimg.htm" role="form"
																method="post">
																<div class="form-group">
																	<form:input style="display: none;" value="" path="id" />
																	<div class="clearfix margin-top-10">
																		<br> <span class="label label-danger">NOTE!
																		</span><span> Nếu Bạn muốn sửa ảnh hãy chọn vào mục
																			sửa đổi </span>
																	</div>
																	<br>
																	<div class="fileinput fileinput-new"
																		data-provides="fileinput">
																		<div class="fileinput-new thumbnail"
																			style="width: 135px; height: 150px;">
																			<img src="files/users/${usersedit.img }" alt="" />
																		</div>
																		<div
																			class="fileinput-preview fileinput-exists thumbnail"
																			style="max-width: 125px; max-height: 125px;"></div>
																		<div class="form-group">
																			<p class="help-block">Example block-level help
																				text here.</p>
																			<form:input type="file" name="..." path="img" />
																		</div>
																	</div>
																</div>
																<form:button type="submit" class="btn black"> Save Changes </form:button>
																<a href="javascript:;"
																	class="btn btn-default w3ls-button"> Cancel </a>
															</form:form>
														</div>
														<div id="menu2" class="tab-pane fade">
															<div class="form-three widget-shadow">
																<div class=" panel-body-inputin">
																	<form:form class="form-horizontal"
																		action="admin/updateuserpwd.htm" method="post"
																		modelAttribute="usersedit">
																		<form:input style="display: none;" value="" path="id" />
																		<div class="form-group">
																			<label class="col-md-3 control-label">Nhập
																				Mật Khẩu cũ:</label>
																			<div class="col-md-8">
																				<div class="input-group">
																					<span class="input-group-addon"> <i
																						class="fa fa-key"></i>
																					</span> <input type="password" class="form-control"
																						name="pwdold" type="password"
																						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}"
																						title="Mật Khẩu Từ 6-16 Ký Tự Bao Gồm Số, Chữ In Hoa và Chữ in Thường"
																						required id="exampleInputPassword1"
																						placeholder="Password">
																				</div>
																			</div>
																		</div>
																		<div class="form-group">
																			<label class="col-md-3 control-label">Nhập
																				Mật Khẩu mới:</label>
																			<div class="col-md-8">
																				<div class="input-group">
																					<span class="input-group-addon"> <i
																						class="fa fa-key"></i>
																					</span> <input
																						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}"
																						title="Mật Khẩu Từ 6-16 Ký Tự Bao Gồm Số, Chữ In Hoa, Chữ in Thường Và Ký Tự Đặc Biệt"
																						type="password" class="form-control" name="pwdnew"
																						id="password1" required id="exampleInputPassword1"
																						placeholder="Password">
																				</div>
																			</div>
																		</div>
																		<div class="form-group">
																			<label class="col-md-3 control-label">Nhập
																				Lại Mật Khẩu Mới:</label>
																			<div class="col-md-8">
																				<div class="input-group input-icon right">
																					<span class="input-group-addon"> <i
																						class="fa fa-key"></i>
																					</span> <input name="pwdnewr" id="password2"
																						type="password" class="form-control"
																						placeholder="Password" required="required">

																				</div>
																			</div>
																			<p class="" style="color: blue;">${message }</p>
																		</div>
																		<form:button type="submit" class="btn white"> Save Changes </form:button>
																		<a href="admin/user.htm"
																			class="btn btn-default w3ls-button"> Cancel </a>
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