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
																		<form:form id="formItem" action="sanpham/updatesanphamsale.htm"
																			method="post" modelAttribute="sanphamsalesedit"
																			enctype="multipart/form-data">
																			<form:input style="display:none;" name="id" path="id"
																				cssClass="form-control"></form:input>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Tên sản phẩm
																					sale:</label>
																				<form:input type="text" value=""
																					placeholder="tensanphamsale" class="form-control"
																					path="tensanphamsale" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Giá bán
																					sale:</label>
																				<form:input type="text" value=""
																					placeholder="giabansale" class="form-control"
																					path="giabansale" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Giảm giá
																					sale:</label>
																				<form:input type="text" value=""
																					placeholder="giamgiasale" class="form-control"
																					path="giamgiasale" />
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Số lượng
																					sale:</label>
																				<form:input type="text" value=""
																					placeholder="soluongsale" class="form-control"
																					path="soluongsale" />
																			</div>
																			<div
																				class="form-group form-md-line-input  has-success">
																				<label class="exampleInputEmail1">Ảnh sản
																					phẩm sale:</label>
																				<div class="form-group">
																					<img style="width: 20%; height: 20%;"
																						class="img-thumbnail"
																						src="files/sanpham/${sanphamsalesedit.anhsanphamsale }" />
																					<form:input name="anhsanphamsale" type="file"
																						class="form-control" id="form_control_1"
																						path="anhsanphamsale" />

																					<div class="form-control-focus"></div>
																				</div>
																			</div>
																			<div class="form-group">
																				<label for="exampleInputEmail1">Tiêu đề:</label>
																				<form:input name="Noidung" type="text"
																						class="form-control" id="form_control_1"
																						path="Noidung" />
																			</div>	
																			<div class="form-group">
																				<label for="exampleInputEmail1">Nội dung sản
																					phẩm sale:</label>
																				<form:textarea name="tomtat" class="form-control ckeditor"
																					onKeyDown="textCounter(this,200);" id="noidungsale"
																					onkeyup="textCounter(this,'q17length1' ,200)"
																					path="noidungsale"></form:textarea>
																			</div>		
																			<div class="form-group">
																				<label for="exampleInputEmail1">Nội dung sản
																					phẩm:</label>
																				<form:textarea name="Noidunglon" class="form-control ckeditor"
																					onKeyDown="textCounter(this,200);" id="noidungsale"
																					onkeyup="textCounter(this,'q17length1' ,200)"
																					path="Noidunglon"></form:textarea>
																			</div>										
																			<button type="submit"
																				class="btn btn-default w3ls-button ">Submit</button>
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