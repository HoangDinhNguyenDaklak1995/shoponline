<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="../admin/user.jsp"></jsp:include>
<!-- Custom Theme Style -->
<link href="build/css/custom.min.css" rel="stylesheet">
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
										<h2>Quản lý User <small></small>${message }</h2>
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
											class="table table-striped table-bordered bulk_action" style="font-size: 8pt;">
											<thead>
												<tr>
													<th><input type="checkbox" id="check-all" class="flat"></th>
													<th>Tài khoản</th>
													<th>Mật Khâu</th>
													<th>Email</th>
													<th>Trạng Thái</th>
													<th>Ngày tạo</th>
													<th>Ảnh đại diện</th>
													<th>Quyền Hạn</th>
													<th>Sửa</th>
													<th>xóa</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="u" items="${listuser }">
												<tr>
													<th><input type="checkbox" id="check-all" class="flat"></th>
											<td>${u.username }</td>
											<td>${u.pwd }</td>
											<td><a href="mailto:shuxer@gmail.com"> ${u.email } </a></td>
											<c:choose>
												<c:when test="${u.is_active == true }">
													<td><span class="label label-sm label-success">
															Active </span></td>
												</c:when>
												<c:otherwise>
													<td><span class="label label-sm label-danger">
															Block </span></td>
												</c:otherwise>
											</c:choose>
											<td class="center">${u.createdate }</td>
											<td class="center"><img
												style="width: 100px; height: 100px;"
												src="files/users/${u.img }" /></td>
											<td>${u.roles.name }</td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Sửa">
													<button class="btn btn-primary btn-xs" data-title="edit"
														data-toggle="modal" data-target="#edit${u.id }">
														<span class="fa fa-scissors"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Xóa">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="#delete${u.id }">
														<span class="fa fa-paint-brush"></span>
													</button>
												</p></td>
												</tr>
												<div class="modal fade" id="edit${u.id }" tabindex="-1"
											role="dialog" aria-labelledby="edit" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true">
															<span class="glyphicon glyphicon-remove"
																aria-hidden="true"></span>
														</button>
														<h4 class="modal-title custom_align" id="Heading">Edit
															this entry</h4>
													</div>
													<div class="modal-body">

														<div class="alert alert-danger">
															<span class="fa fa-exclamation-triangle"></span> Bạn chắc
															chắn muốn sửa lại thông tin?
														</div>

													</div>
													<div class="modal-footer ">
														<a class="btn btn-danger" style="float: left;"
															href="admin/editu/${u.id }.htm">Sửa thông tin </a>
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
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true">
															<span class="glyphicon glyphicon-remove"
																aria-hidden="true"></span>
														</button>
														<h4 class="modal-title custom_align" id="Heading">Delete
															this entry</h4>
													</div>
													<div class="modal-body">

														<div class="alert alert-danger">
															<span class="fa fa-exclamation-triangle"></span> Bạn có
															chắc chắn muốn xóa?
														</div>

													</div>
													<div class="modal-footer ">
														<a class="btn btn-danger" style="float: left;"
															href="admin/deleteu/${u.id }.htm">Xóa </a>
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
            <a href="https://colorlib.com"></a>
          </div>
          <div class="clearfix"></div>
        </footer>
			</div>
		</div>
		<jsp:include page="../admin/head.jsp"></jsp:include>
		
	</body>
</c:if>
