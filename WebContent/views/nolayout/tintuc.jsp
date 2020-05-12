<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:include page="../admin/user.jsp"></jsp:include>
<!-- Custom Theme Style -->
<link href="build/css/custom.min.css" rel="stylesheet">
<style>
.tin {
	white-space: nowrap;
	width: 8em;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>
<c:if test="${ useradmin.roles.id == 1}">
	<body class="nav-md">
		<div class="container body">
			<div class="main_container">
				<jsp:include page="../admin/header.jsp"></jsp:include>
				<div class="right_col" role="main" style="">
					<div class="">
						<div class="clearfix"></div>

						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											Quản lý tin tức <small></small> <br> <br> <a
												href="tintuc/addnews.htm"><button
													id="sample_editable_1_new" class="btn sbold green"
													type="button">
													Thêm mới <i class="fa fa-plus"></i>
												</button></a>${message }</h2>
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i
													class="fa fa-chevron-up"></i></a></li>
											<li class="dropdown"><a href="#" class="dropdown-toggle"
												data-toggle="dropdown" role="button" aria-expanded="false"><i
													class="fa fa-wrench"></i></a>
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Settings 1</a></li>
													<li><a href="#">Settings 2</a></li>
												</ul></li>
											<li><a class="close-link"><i class="fa fa-close"></i></a>
											</li>
										</ul>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">
										<table id="datatable-checkbox"
											class="table table-striped table-bordered bulk_action"
											style="font-size: 8pt;">
											<thead>
												<tr>
													<th><input type="checkbox" id="check-all" class="flat"></th>
													<th>Người kiểm duyệt</th>
													<th>Người đăng</th>
													<th>Danh mục</th>
													<th>Tiêu đề</th>
													<th>Ngày tạo</th>
													<th>Trạng thái</th>
													<th>Đường dẫn link</th>
													<th>Tóm tắt</th>
													<th>Nội dung</th>
													<th>Số Lượng views</th>
													<th>Hình ảnh</th>
													<th>Sửa</th>
													<th>xóa</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="u" items="${tintucs }">
													<tr>
														<th><input type="checkbox" id="check-all"
															class="flat"></th>
														<td>${u.users.fullname }</td>
														<c:forEach var="us" items="${listuser }">
															<c:if test="${us.id == u.idusermodify }">
																<td>${us.fullname }</td>
															</c:if>
														</c:forEach>
														<td><a href=""> ${u.categorys.name } </a></td>
														<td><p class="tin">${u.title }</p></td>
														<td class="center"><fmt:formatDate
																value="${u.createdate }" pattern="dd-MM-yyyy" /></td>
														<c:choose>
															<c:when test="${u.status == true }">
																<td><span class="label label-sm label-success">
																		Active </span></td>
															</c:when>
															<c:otherwise>
																<td><span class="label label-sm label-danger">
																		Block </span></td>
															</c:otherwise>
														</c:choose>
														<td>${u.link }</td>
														<td><p class="tin">${u.sum_content }</p></td>
														<td>
															<img alt="" src="files/tintuc/${u.img }" style="width: 50px;height: auto;">
														</td>
														<td>${u.views }</td>
														<td class="center"><img
															style="width: 70px; height: 70px;"
															src="files/tintuc/${u.img }" /></td>
														<td><p data-placement="top" data-toggle="tooltip"
																title="Sửa">
																<button class="btn btn-primary btn-xs" data-title="edit"
																	data-toggle="modal" data-target="#edit${u.id }">
																	<span class="fa fa-scissors"></span>
																</button>
															</p></td>
														<td><p data-placement="top" data-toggle="tooltip"
																title="Xóa">
																<button class="btn btn-danger btn-xs"
																	data-title="Delete" data-toggle="modal"
																	data-target="#delete${u.id }">
																	<span class="fa fa-paint-brush"></span>
																</button>
															</p></td>
													</tr>
													<div class="modal fade" id="edit${u.id }" tabindex="-1"
														role="dialog" aria-labelledby="edit" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-hidden="true">
																		<span class="glyphicon glyphicon-remove"
																			aria-hidden="true"></span>
																	</button>
																	<h4 class="modal-title custom_align" id="Heading">Edit
																		this entry</h4>
																</div>
																<div class="modal-body">

																	<div class="alert alert-danger">
																		<span class="fa fa-exclamation-triangle"></span> Bạn
																		chắc chắn muốn sửa lại thông tin?
																	</div>

																</div>
																<div class="modal-footer ">
																	<a class="btn btn-danger" style="float: left;"
																		href="tintuc/edit/${u.id }.htm">Sửa thông tin </a>
																	<button type="button" class="btn btn-default"
																		data-dismiss="modal">
																		<span class="fa fa-brush"></span> Không
																	</button>
																</div>
															</div>
															<div class="clearfix"></div>
														</div>
													</div>
													<div class="modal fade" id="delete${u.id }" tabindex="-1"
														role="dialog" aria-labelledby="edit" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-hidden="true">
																		<span class="glyphicon glyphicon-remove"
																			aria-hidden="true"></span>
																	</button>
																	<h4 class="modal-title custom_align" id="Heading">Delete
																		this entry</h4>
																</div>
																<div class="modal-body">

																	<div class="alert alert-danger">
																		<span class="fa fa-exclamation-triangle"></span> Bạn
																		có chắc chắn muốn xóa?
																	</div>

																</div>
																<div class="modal-footer ">
																	<a class="btn btn-danger" style="float: left;"
																		href="tintuc/deletetintuc/${u.id }.htm">Xóa </a>
																	<button type="button" class="btn btn-default"
																		data-dismiss="modal">
																		<span class="fa fa-brush"></span> No
																	</button>
																</div>
															</div>
															<div class="clearfix"></div>
														</div>
													</div>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
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
</c:if>