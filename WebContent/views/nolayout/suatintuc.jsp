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
																thông tin tin tức</a></li>
													</ul>

													<div class="tab-content">
														<div id="home" class="tab-pane fade in active">
															<div class="forms">
																<div class="form-grids widget-shadow"
																	data-example-id="basic-forms">
																	<div class="form-body">
																		<form:form id="formItem" action="tintuc/update.htm"
																			method="post" modelAttribute="tintucedit"
																			enctype="multipart/form-data">
																			<input style="display: none;" name="iduser"
																				value="${useradmin.id }" />
																			<c:if test="${tintucedit.id > 0 }">
																				<div style="display: none;" class="form-group">
																					<label>Id</label>
																					<form:input name="Id" path="Id"
																						cssClass="form-control" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tiêu đề:</label>
																					<form:input type="text" value=""
																						placeholder="tensanphamsale" class="form-control"
																						path="title" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Link kết
																						nối:</label>
																					<form:input name="link"
																						class="form-control ckeditor"
																						onKeyDown="textCounter(this,200);"
																						id="noidungsale"
																						onkeyup="textCounter(this,'q17length1' ,200)"
																						path="link"></form:input>
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Danh mục
																						tin tức:</label>
																					<form:select class="form-control edited"
																						name="categorys" id="form_control_1"
																						path="categorys" items="${listcategory }"
																						itemValue="id" itemLabel="name" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Hình ảnh:</label>
																					<div class="form-group">
																						<img style="width: 20%; height: 20%;"
																							class="img-thumbnail"
																							src="files/tintuc/${tintucedit.img }" />
																						<form:input name="img" type="file"
																							class="form-control" id="form_control_1"
																							path="img" />

																						<div class="form-control-focus"></div>
																					</div>
																				</div>
																				<div class="form-group form-md-line-input">
																					<label style="padding-left: 0px;"
																						class="col-md-2 control-label"
																						for="form_control_1">Trạng Thái</label>
																					<div class="col-md-10">
																						<div class="md-radio-list">
																							<c:choose>
																								<c:when test="${tintucedit.status == true }">
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
																					<label for="exampleInputEmail1">Tóm tắt
																						tin:</label>
																					<form:textarea type="text" value=""
																						placeholder="Sum_content" class="form-control"
																						path="Sum_content" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Nội dung
																						tin chi tiết:</label>
																					<form:textarea type="text" value=""
																						placeholder="Sum_content"
																						class="form-control ckeditor" path="Content_main" />
																				</div>
																				<div class="container">
																					<div class="form-group">
																						<label for="exampleInputPassword1">Người
																							đăng:</label> <input class="form-control"
																							id="disabledInput" type="text"
																							value="${tintucedit.users.fullname }"
																							placeholder="Disabled input here..." disabled>
																					</div>
																				</div>
																				<div class="container">
																					<div class="form-group">
																						<label for="exampleInputPassword1">Kiểm
																							duyệt viên:</label>
																						<c:forEach var="us" items="${listuser }">
																							<c:if test="${us.id == tintucedit.idusermodify }">
																								<input type="text" class="form-control" readonly
																									value="${us.fullname }" id="form_control_1"
																									placeholder="Placeholder..." />
																								<div class="form-control-focus"></div>
																							</c:if>
																						</c:forEach>
																					</div>
																				</div>
																				<div class="container">
																					<div class="form-group">
																						<label for="exampleInputPassword1">Ngày
																							đăng:</label> <input class="form-control"
																							id="disabledInput" type="text"
																							value="${tintucedit.createdate }"
																							placeholder="Disabled input here..." disabled>
																					</div>
																				</div>									
																				<div class="container">
																					<div class="form-group">
																						<label for="exampleInputPassword1">Số lượng theo dõi:</label> <input class="form-control"
																							id="disabledInput" type="text"
																							value="${tintucedit.views }"
																							placeholder="Disabled input here..." disabled>
																					</div>
																				</div>
																				<button type="submit"
																					class="btn btn-default w3ls-button ">Submit</button>
																				<a href="tintuc/tintuc.htm"
																					class="btn btn-default w3ls-button">Quay Lại</a>
																			</c:if>
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
				 <a
						href="https://colorlib.com"></a>
				</div>
				<div class="clearfix"></div>
			</footer>
		</div>
	</div>

	<jsp:include page="../admin/head.jsp"></jsp:include>
</body>
</html>