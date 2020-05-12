<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Oean Shoppe-Trang thông tin cá nhân</title>
<link href="./css/account.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://opensource.keycdn.com/fontawesome/4.6.3/font-awesome.min.css">
</head>
<body>
	<c:if test="${user.roles.id >0}">
		<div class="container">
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">×</button>
							<h4 class="modal-title">Search Section</h4>
						</div>
						<div class="modal-body">
							<section class="search-box1" id="panel">
								<div class="container">
									<form:form modelAttribute="userseditg"
										enctype="multipart/form-data" action="updateuserimgg.htm"
										role="form" method="post">
										<div class="form-group">
											<form:input style="display: none;" value="" path="id" />
											<div class="fileinput fileinput-new"
												data-provides="fileinput">
												<div class="fileinput-new thumbnail"
													style="width: 200px; height: 200px;">
													<img src="files/users/${userseditg.img }" alt="" />
												</div>

												<label for="file-upload" id="file-drag"> <div class="fileinput-new thumbnail"
													style="width: 200px; height: 200px;margin-top: -230px;"><img
													id="file-image" src="#" alt="Preview" class="hidden"
													></div>
													<div id="start">
														<i class="fa fa-download" aria-hidden="true"></i>
														<div id="notimage" class="hidden"></div>
													</div> <span class="btn default btn-file"> <span
														class="fileinput-new"></span> <span
														class="fileinput-exists"></span><form:input
															id="file-upload" type="file" name="fileUpload" path="Img"
															accept="image/*"/>
												</span>
													<div id="response" class="hidden">
														<div id="messages"></div>
														<progress class="progress" id="file-progress" value="0">
															<span>0</span>%
														</progress>
													</div></label>
											</div>
										</div>
										<div class="margin-top-10">
											<form:button type="submit" class="btn green"> Save Changes </form:button>
										</div>
									</form:form>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section>
			<div class="container" style="margin-top: 30px; text-align: left;">
				<div class="profile-head">
					<div class="col-md- col-sm-4 col-xs-12">
						<img src="files/users/${userseditg.img }" class="img-responsive" />
						<h6>${userseditg.fullname }</h6>
					</div>
					<div class="col-md-5 col-sm-5 col-xs-12">
						<h5>${userseditg.fullname }</h5>
						<p style="margin-left: 50px;">${userseditg.roles.name }</p>
						<ul>
							<li><span class="glyphicon glyphicon-map-marker"></span>
								${userseditg.createdate }</li>
							<li><span class="glyphicon glyphicon-home"></span>
								${userseditg.address }</li>
							<li><span class="glyphicon glyphicon-phone"></span> <a
								href="#" title="call">${userseditg.phone }</a></li>
							<li><span class="glyphicon glyphicon-envelope"></span><a
								href="#" title="mail">${userseditg.email }</a></li>
						</ul>
					</div>
				</div>
				<!--profile-head close-->
			</div>
			<div id="sticky" class="container">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs nav-menu" role="tablist">
					<li class="active"><a href="#profile" role="tab"
						data-toggle="tab"> <i class="fa fa-male"></i> Trang cá nhân
					</a></li>
					<li class="active"><a href="" role="tab" data-toggle="modal"
						data-target="#myModal" data-toggle="tab"> <i
							class="fa fa-male"></i> Thay đổi hình ảnh
					</a></li>
					<li><a href="#change" role="tab" data-toggle="tab"> <i
							class="fa fa-key"></i> Sửa đổi thông tin người dùng
					</a></li>
					<li><a href="#changeps" role="tab" data-toggle="tab"> <i
							class="fa fa-key"></i> Đổi mật khẩu
					</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane fade active in" id="profile">
						<div class="container">
							<br clear="all" />
							<div class="row">
								<div class="col-md-12">
									<h4 class="pro-title">Thông tin cá nhân</h4>
								</div>
								<div class="col-md-6">
									<div class="table-responsive responsiv-table">
										<table class="table bio-table">
											<tbody>
												<tr>
													<td>Họ và tên</td>
													<td>: ${userseditg.fullname }</td>
												</tr>
												<tr>
													<td>Thông tin tài khoản</td>
													<td>: ${userseditg.username }</td>
												</tr>
												<tr>
													<td>Địa chỉ email</td>
													<td>:${userseditg.email }</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="col-md-6">
									<div class="table-responsive responsiv-table">
										<table class="table bio-table">
											<tbody>
												<tr>
													<td>Ngày đăng kí</td>
													<td>: ${userseditg.createdate }</td>
												</tr>
												<tr>
													<td>Địa chỉ thường trú</td>
													<td>: ${userseditg.address }</td>
												</tr>
												<tr>
													<td>Số điện thoại</td>
													<td>: ${userseditg.phone }</td>
												</tr>
											</tbody>
										</table>
									</div>
									<!--table-responsive close-->
								</div>
								<!--col-md-6 close-->
							</div>
							<!--row close-->
						</div>
						<!--container close-->
					</div>
					<!--tab-pane close-->
					<div class="tab-pane fade" id="change">
						<div class="container fom-main">
							<div class="row">
								<div class="col-sm-12">
									<h2 class="register">Sửa đổi thông tin</h2>
								</div>
							</div>
							<br />
							<div class="row">
								<form:form role="form" action="updateuserg.htm" method="post"
									modelAttribute="userseditg">
									<form:input style="display: none;" value="" path="id" />
									<fieldset>
										<div class="form-group col-md-11">
											<label class="col-md-10 control-label">Họ và tên:</label>
											<div class="col-md-12 inputGroupContainer">
												<div class="input-group">
													<form:input type="text" value="" placeholder=""
														class="form-control" path="fullname" />
												</div>
											</div>
										</div>
										<div class="form-group col-md-11">
											<label class="col-md-10 control-label"> Địa chỉ
												E-Mail:</label>
											<div class="col-md-12 inputGroupContainer">
												<div class="input-group">
													<form:input type="text" placeholder="" class="form-control"
														path="email" />
												</div>
											</div>
										</div>
										<div class="form-group col-md-11">
											<label class="col-md-10 control-label">Địa chỉ thường
												trú:</label>
											<div class="col-md-12 inputGroupContainer">
												<div class="input-group">
													<form:input type="text" placeholder="" class="form-control"
														path="address" />
												</div>
											</div>
										</div>
										<div class="form-group col-md-11">
											<label class="col-md-10 control-label">Số điện thoại:</label>
											<div class="col-md-12 inputGroupContainer">
												<div class="input-group">
													<form:input type="text" placeholder="" class="form-control"
														path="phone" />
												</div>
											</div>
										</div>
										<div class="form-group col-md-10">
											<div class="col-md-6">
												<form:button type="submit"
													class="btn btn-warning submit-button">Save</form:button>
											</div>
										</div>
									</fieldset>
								</form:form>
							</div>
							<!--row close-->
						</div>
						<!--container close -->
					</div>
					<div class="tab-pane fade" id="changeps">
						<div class="container fom-main">
							<div class="row">
								<div class="col-sm-12">
									<h2 class="register">Đổi mật khẩu</h2>
								</div>
							</div>
							<br />
							<div class="row">
								<form:form role="form" action="updateuserpwdg.htm" method="post"
									modelAttribute="userseditg">
									<form:input style="display: none;" value="" path="id" />
									<fieldset>
										<div class="form-group col-md-11">
											<label class="col-md-10 control-label">Nhập mật khẩu
												cũ:</label>
											<div class="col-md-12 inputGroupContainer">
												<div class="input-group">
													<input name="pwdold" placeholder="Mật khẩu cũ"
														class="form-control" type="password"
														pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()]).{8,}"
														title="Mật Khẩu Ít Nhất 8 Ký Tự Bao Gồm Số, Chữ In Hoa, Chữ in Thường Và Ký Tự Đặc Biệt">
												</div>
											</div>
										</div>
										<div class="form-group col-md-11">
											<label class="col-md-10 control-label">Nhập mật khẩu
												mới:</label>
											<div class="col-md-12 inputGroupContainer">
												<div class="input-group">
													<input name="pwdnew" id="password1"
														placeholder="Mật khẩu mới" class="form-control"
														type="password">
												</div>
											</div>
										</div>
										<div class="form-group col-md-11">
											<label class="col-md-11 control-label">Nhập lại mật
												khẩu mới:</label>
											<div class="col-md-12 inputGroupContainer">
												<div class="input-group">
													<input name="pwdnewr" id="password2"
														placeholder="Mật khẩu mới" class="form-control"
														type="password">
												</div>
											</div>
										</div>
										<div class="form-group col-md-11">
											<div class="col-md-6">
												<form:button type="submit"
													class="btn btn-warning submit-button">Save</form:button>
											</div>
										</div>
									</fieldset>
								</form:form>
							</div>
							<!--row close-->
						</div>
						<!--container close -->
					</div>
					<!--tab-pane close-->
				</div>
				<!--tab-content close-->
			</div>
			<!--container close-->
		</section>
		<!--section close-->
	</c:if>
	<script type="text/javascript">
		//tab js//
		$(document).ready(
				function(e) {

					$('.form').find('input, textarea').on(
							'keyup blur focus',
							function(e) {

								var $this = $(this), label = $this
										.prev('label');

								if (e.type === 'keyup') {
									if ($this.val() === '') {
										label.removeClass('active highlight');
									} else {
										label.addClass('active highlight');
									}
								} else if (e.type === 'blur') {
									if ($this.val() === '') {
										label.removeClass('active highlight');
									} else {
										label.removeClass('highlight');
									}
								} else if (e.type === 'focus') {

									if ($this.val() === '') {
										label.removeClass('highlight');
									} else if ($this.val() !== '') {
										label.addClass('highlight');
									}
								}

							});
					$('.tab a').on('click', function(e) {

						e.preventDefault();

						$(this).parent().addClass('active');
						$(this).parent().siblings().removeClass('active');
						target = $(this).attr('href');

						$('.tab-content > div').not(target).hide();

						$(target).fadeIn(600);

					});
					//canvas off js//
					$('#menu_icon')
							.click(
									function() {
										if ($("#content_details").hasClass(
												'drop_menu')) {
											$("#content_details").addClass(
													'drop_menu1').removeClass(
													'drop_menu');
										} else {
											$("#content_details").addClass(
													'drop_menu').removeClass(
													'drop_menu1');
										}
									});
					$("#flip").click(function() {
						$("#panel").slideToggle("5000");
					});
					$(window).scroll(function() {
						if ($(window).scrollTop() >= 500) {
							$('nav').addClass('stick');
						} else {
							$('nav').removeClass('stick');
						}
					});
				});
	</script>
</body>
<script>
	//File Upload
	//
	function ekUpload() {
		function Init() {

			console.log("Upload Initialised");

			var fileSelect = document.getElementById('file-upload'), fileDrag = document
					.getElementById('file-drag'), submitButton = document
					.getElementById('submit-button');

			fileSelect.addEventListener('change', fileSelectHandler, false);

			// Is XHR2 available?
			var xhr = new XMLHttpRequest();
			if (xhr.upload) {
				// File Drop
				fileDrag.addEventListener('dragover', fileDragHover, false);
				fileDrag.addEventListener('dragleave', fileDragHover, false);
				fileDrag.addEventListener('drop', fileSelectHandler, false);
			}
		}

		function fileDragHover(e) {
			var fileDrag = document.getElementById('file-drag');

			e.stopPropagation();
			e.preventDefault();

			fileDrag.className = (e.type === 'dragover' ? 'hover'
					: 'modal-body file-upload');
		}

		function fileSelectHandler(e) {
			// Fetch FileList object
			var files = e.target.files || e.dataTransfer.files;

			// Cancel event and hover styling
			fileDragHover(e);

			// Process all File objects
			for (var i = 0, f; f = files[i]; i++) {
				parseFile(f);
				uploadFile(f);
			}
		}

		// Output
		function output(msg) {
			// Response
			var m = document.getElementById('messages');
			m.innerHTML = msg;
		}

		function parseFile(file) {

			console.log(file.name);
			output('<strong>' + encodeURI(file.name) + '</strong>');

			// var fileType = file.type;
			// console.log(fileType);
			var imageName = file.name;

			var isGood = (/\.(?=gif|jpg|png|jpeg)/gi).test(imageName);
			if (isGood) {
				document.getElementById('start').classList.add("hidden");
				document.getElementById('response').classList.remove("hidden");
				document.getElementById('notimage').classList.add("hidden");
				// Thumbnail Preview
				document.getElementById('file-image').classList
						.remove("hidden");
				document.getElementById('file-image').src = URL
						.createObjectURL(file);
			} else {
				document.getElementById('file-image').classList.add("hidden");
				document.getElementById('notimage').classList.remove("hidden");
				document.getElementById('start').classList.remove("hidden");
				document.getElementById('response').classList.add("hidden");
				document.getElementById("file-upload-form").reset();
			}
		}

		function setProgressMaxValue(e) {
			var pBar = document.getElementById('file-progress');

			if (e.lengthComputable) {
				pBar.max = e.total;
			}
		}

		function updateFileProgress(e) {
			var pBar = document.getElementById('file-progress');

			if (e.lengthComputable) {
				pBar.value = e.loaded;
			}
		}

		function uploadFile(file) {

			var xhr = new XMLHttpRequest(), fileInput = document
					.getElementById('class-roster-file'), pBar = document
					.getElementById('file-progress'), fileSizeLimit = 1024; // In MB
			if (xhr.upload) {
				// Check if file is less than x MB
				if (file.size <= fileSizeLimit * 1024 * 1024) {
					// Progress bar
					pBar.style.display = 'inline';
					xhr.upload.addEventListener('loadstart',
							setProgressMaxValue, false);
					xhr.upload.addEventListener('progress', updateFileProgress,
							false);

					// File received / failed
					xhr.onreadystatechange = function(e) {
						if (xhr.readyState == 4) {
							// Everything is good!

							// progress.className = (xhr.status == 200 ? "success" : "failure");
							// document.location.reload(true);
						}
					};

					// Start upload
					xhr.open('POST', document
							.getElementById('file-upload-form').action, true);
					xhr.setRequestHeader('X-File-Name', file.name);
					xhr.setRequestHeader('X-File-Size', file.size);
					xhr.setRequestHeader('Content-Type', 'multipart/form-data');
					xhr.send(file);
				} else {
					output('Please upload a smaller file (< ' + fileSizeLimit
							+ ' MB).');
				}
			}
		}

		// Check for the various File API support.
		if (window.File && window.FileList && window.FileReader) {
			Init();
		} else {
			document.getElementById('file-drag').style.display = 'none';
		}
	}
	ekUpload();
</script>
<script type="text/javascript">
	var password = document.getElementById("password1"), confirm_password = document
			.getElementById("password2");

	function validatePassword() {
		if (password1.value != password2.value) {
			password2.setCustomValidity("Passwords Don't Match");
		} else {
			password2.setCustomValidity('');
		}
	}
	password1.onchange = validatePassword;
	password2.onkeyup = validatePassword;
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</html>
