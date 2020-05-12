<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.htm" class="site_title"><i class="fa fa-paw"></i> <span>Ocean Shoppe!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="files/users/${useradmin.img }" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>${useradmin.fullname }</h2>
              </div>
            </div>
            <br />
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Trang Quản trị <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="admin/user.htm">Quản Lý User</a></li>
                      <li><a href="admin/sanpham.htm">Quản Lý Sản Phẩm</a></li>
                      <li><a href="tintuc/tintuc.htm">Quản Lý Tin Tức</a></li> 
                      <li><a href="khac/doitac.htm">Quản Lý Đối tác</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Quản Lý Loại Hình <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
					  <li><a href="khac/themsanpham.htm">Quản Lý Loại Sản Phẩm</a></li>
                     <li><a href="khac/quyenhan.htm">Quản Lý Quyền Hạn</a></li>
                    </ul>
                  </li>  
                  <li><a><i class="fa fa-edit"></i> Khác <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="admin/admin-login.htm">Login</a></li>
                      <li><a href="admin/error.htm">Error page</a></li>
                      <li><a href="admin/logout.htm">Logout</a></li>
                    </ul>
                  </li>                 
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="admin/logout.htm">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>
        <jsp:include page="../nolayout/section.jsp"></jsp:include>