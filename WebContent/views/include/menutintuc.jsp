<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="header">
		<div class="topbar">
			<div class="container">
				<div class="topbar-left">
					<ul class="topbar-nav clearfix">
						<c:forEach var="ty" items="${danhmuctintuc }">
						<c:if test="${ty.subcategory == 0 }">
							<li><a href="tintuc/${ty.url }/${ty.id }.htm">${ty.name }</a></li>
						</c:if>
					</c:forEach>
										<li class="active"><a href="tintuc.htm">Xem thêm </a></li>
					</ul>
				</div>
			</div>
			<!-- /.container -->
		</div>
		<!-- /.topbar -->
	</div>