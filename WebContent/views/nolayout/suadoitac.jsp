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
																thông tin doanh nghiệp</a></li>
													</ul>

													<div class="tab-content">
														<div id="home" class="tab-pane fade in active">
															<div class="forms">
																<div class="form-grids widget-shadow"
																	data-example-id="basic-forms">
																	<div class="form-body">
																		<form:form id="formItem" action="khac/updatedoitac.htm"
																			method="post" modelAttribute="Doitacedit"
																			enctype="multipart/form-data">
																			<input style="display: none;" name="iduser"
																				value="${useradmin.id }" />
																			<c:if test="${Doitacedit.iddoitac > 0 }">
																				<div style="display: none;" class="form-group">
																					<label>Id</label>
																					<form:input name="iddoitac" path="iddoitac"
																						cssClass="form-control" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Tên doanh nghiệp:</label>
																					<form:input type="text" value="" name="name"
																						placeholder="Tên doanh nghiệp" class="form-control"
																						path="name" />
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Địa chỉ :</label>
																					<form:input name="address"
																						class="form-control ckeditor"
																						onKeyDown="textCounter(this,200);"
																						id="noidungsale" placeholder="Địa chỉ doanh nghiệp"
																						onkeyup="textCounter(this,'q17length1' ,200)"
																						path="address"></form:input>
																				</div>
																				<div class="form-group">
																					<label for="exampleInputEmail1">Số điện thoại:</label>
																					<form:input class="form-control edited"
																						name="phone" id="form_control_1"
																						path="phone" placeholder="Số điện thoại" />
																				</div>
																				
																				<div class="form-group">
																					<label for="exampleInputEmail1">Mô tả:</label>
																					<form:input type="text" value="" name="Description"
																						 class="form-control"
																						path="Description" placeholder="Mô tả doanh nghiệp" />
																				</div>	
																				<button type="submit"
																					class="btn btn-default w3ls-button ">Submit</button>
																				<a href="khac/doitac.htm"
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