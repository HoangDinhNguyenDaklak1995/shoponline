<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="../admin/headtag.jsp"></jsp:include>
<body>
	<c:choose>
		<c:when test="${user.roles.id == 1 || user.roles.id == 2 }">
			<div data-vide-bg="admin/video/animation">
				<div class="center-container">
					<!--header-->
					<div class="header-w3l">
						<h1>Quản trị Admin</h1>
					</div>
					<!--//header-->
					<div class="main-content-agile">
						<div class="left-w3l-mk">
							<img src="files/users/${user.img }" alt=" ">
							<h3>${user.fullname }</h3>
							<div class="social-icon">
								<a href="#" class="social-button twitter"><i
									class="fa fa-twitter"></i></a> <a href="#"
									class="social-button facebook"><i class="fa fa-facebook"></i></a>
								<a href="#" class="social-button google"><i
									class="fa fa-google-plus"></i></a> <a href="#"
									class="social-button dribbble"><i class="fa fa-dribbble"></i></a>
							</div>
							<h3>
								<a href="index.htm">Not ${user.fullname }</a>
							</h3>
						</div>
						<div class="sub-main-w3">
							<div class="wthree-pro">
								<h2>
									<span>Đăng</span> nhập
								</h2>
							</div>
							<form action="admin/admin-login.htm" method="post">
								<input placeholder="E-mail" name="email" class="user"
									type="email" required="required" value="${user.email }">
								<input name="iduser" style="display: none;" value="${user.id }" />
								<span class="icon1"><i class="fa fa-user"
									aria-hidden="true"></i></span><br> <br> <input
									placeholder="Password"
									pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}"
									title="Mật Khẩu Từ 6-16 Ký Tự Bao Gồm Số, Chữ In Hoa, Chữ in Thường Và Ký Tự Đặc Biệt"
									name="pwd" class="pass" type="password"
									autocomplete="off">
								<p style="color: red;">${message }</p>
								<span class="icon2"><i class="fa fa-unlock"
									aria-hidden="true"></i></span><br>
								<div class="demo5">
									<div class="switch demo3">
										<input type="checkbox"> <label><i></i></label>
									</div>
								</div>
								<div class="sub-w3l">
									<h6>
										<a href="#">Stay Signed In</a>
									</h6>
									<div class="right-w3l">
										<input type="submit" value="Login">
									</div>
								</div>
							</form>
						</div>
						<div class="clear"></div>
					</div>
					<div class="footer"></div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<jsp:forward page="admin/error.htm"></jsp:forward>
		</c:otherwise>
	</c:choose>
</body>