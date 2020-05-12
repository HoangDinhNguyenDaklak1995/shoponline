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
.ckeditor{
white-space: nowrap;
	width: 8em;
	overflow: hidden;
	text-overflow: ellipsis;
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
																	dữ liệu tin tức</a></li>
														</ul>
														<div class="tab-content">
															<div id="home" class="tab-pane fade in active">
																<div class="forms">
																	<div class="form-grids widget-shadow"
																		data-example-id="basic-forms">
																		<div class="form-body">
																			<form:form id="formItem"
																				action="tintuc/addnews.htm" method="post"
																				modelAttribute="tintuc1"
																				enctype="multipart/form-data">
																				<input style="display: none;" name="iduser"
																					value="${useradmin.id }" />
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tiêu đề:</label>
																					<form:input type="text" name="title" value="" maxlength="100"
																						placeholder="Tiêu đề" class="form-control"
																						path="title" />
																				</div>
																				
																				<div class="form-group">
																					<label for="exampleInputEmail1">Ảnh :</label>
																					<form:input type="file" name="img" value="" maxlength="100"
																						placeholder="Link kết nối" class="form-control"
																						path="img" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Danh mục tin:</label>
																					<form:select class="form-control edited"
																						id="form_control_1" path="categorys"
																						items="${listcategory }" itemValue="id"
																						itemLabel="name" name="categorys"/>
																				</div>
																					<div class="form-group">
																					<label for="exampleInputEmail1">Tóm tắt tin:</label>
																					<form:input type="text" name="Sum_content" value="" maxlength="600"
																						placeholder="Link kết nối" class="form-control"
																						path="Sum_content" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Nội dung tin:</label>
																					<form:textarea type="text" name="Content_main" value="" maxlength="30000"
																						placeholder="Link kết nối" class="form-control ckeditor"
																						path="Content_main" />
																				</div>
																				
																				<form:button type="submit"
																					class="btn btn-default w3ls-button">Submit</form:button>
																					<a href="tintuc/tintuc.htm" class="btn btn-default w3ls-button">Quay Lại</a>
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