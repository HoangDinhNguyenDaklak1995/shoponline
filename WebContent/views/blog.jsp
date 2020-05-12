<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>${tintuc.title }</title>
</head>
<body>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.11&appId=117453615599820';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<div class="breadcrumbs">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.htm">Trang chủ</a></li>
				<li class="active">Trang thông tin</li>
			</ul>
		</div>
	</div>
	<div class="main">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="block block-layered-nav">
						<div class="block-content">
							<h2>Danh mục tin</h2>
							<ol>
								<c:forEach var="ty" items="${danhmuctintuc }">
									<c:if test="${ty.subcategory == 0 }">
										<li><a href="tintuc/${ty.url }/${ty.id }.htm">${ty.name }</a></li>
									</c:if>
								</c:forEach>
							</ol>
						</div>
					</div>

					<div class="block">
						<div class="title-group">
							<h2>Bài viết liên quan</h2>
						</div>
						<div class="block-content">
							<c:forEach var="n" items="${tintuclq }" varStatus="status">
								<c:set var="dem" value="${status.index + 1 }"></c:set>
								<c:choose>
									<c:when test="${currentpage > 1 }">
										<c:set var="dem"
											value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
									</c:when>
								</c:choose>
								<div class="comment-item">
									<Strong><a
										href="http://localhost:8080/duan/${n.categorys.url }/${n.link }/${n.id }.htm"
										style="font-size: 10pt;"> ${n.title }</a></Strong>
									<div class="comment-date">${n.createdate }</div>
									<p style="font-size: 8pt;">“${n.sum_content }“</p>
								</div>
							</c:forEach>
							<nav>
								<ul class="pagination" style="display: none;">
									<c:if test="${currentpage > 1  }">
										<li><a href="tintuc.htm?page=${currentpage -1 }"
											aria-label="Previous">Prev</a></li>
									</c:if>
									<c:forEach begin="1" end="${pagecount }" varStatus="status">
										<c:choose>
											<c:when test="${status.index == currentpage }">
												<li class="divider"><span>|</span></li>
												<li><a href="tintuc.htm?page=${status.index }">${status.index }</a></li>
												<li class="divider"><span>|</span></li>
											</c:when>
										</c:choose>
									</c:forEach>
									<c:if test="${currentpage < pagecount }">
										<li><a href="tintuc.htm?page=${currentpage +1 }"
											aria-label="Next">Next</a></li>
									</c:if>
								</ul>
							</nav>
						</div>
					</div>
					<!-- /.block - Comments -->

				</div>
				<!-- /sidebar -->
				<div class="col-sm-9">
					<div class="blog-detail blog-list">
						<div class="item">
							<div class="item-inner">
								<h2 class="product-name">
									<a>${tintuc.title }</a>
								</h2>
								<div class="blog-attr">
									<c:forEach var="us" items="${listuser }">
										<c:if test="${us.id == tintuc.idusermodify }">
											<span>Đăng bởi: <a>${us.fullname }</a></span>
										</c:if>
									</c:forEach>
									<span style="margin-right: 10px;"><span
										style="margin-right: 10px;" class="fb-comments-count"
										data-href="http://localhost:8080/duan/${tintuc.categorys.url }/${tintuc.link }/${tintuc.id }.htm"></span></span>
									<span class="comment-tag"><i class="fa fa-eye"></i>${tintuc.views }<i></i></span>
									<span class="separator">|</span> <span> Vào lúc : <fmt:formatDate
											value="${tintuc.createdate }" pattern="dd-MM-yyyy" /></span>
								</div>
								<div class="fb-like"
									data-href="https://www.facebook.com/nguyencongtahng/"
									data-layout="standard" data-action="like" data-size="small"
									data-show-faces="false" data-share="true">
								</div>
								<br>
								
								<div class="share-post">
									<span class="share-label">Chia sẻ bài viết !</span>
									<ul>
										<li class="color-facebook"><a href="javascript:fbshareCurrentPage()" target="_blank" alt="Share on Facebook"><span
												class="fa fa-facebook-f"></span></a></li>
										<li class="color-twitter"><a href="#"><span
												class="fa fa-twitter"></span></a></li>
										<li class="color-pinterest"><a href="#"><span
												class="fa fa-pinterest"></span></a></li>
										<li class="color-gplus"><a href="#"><span
												class="fa fa-google-plus"></span></a></li>
										<li class="color-linkedin"><a href="#"><span
												class="fa fa-linkedin"></span></a></li>
									</ul>
								</div>
								<div>
									<p>${tintuc.sum_content }</p><br>
									<div>${tintuc.content_main }</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="title-group3">
							<h3>(${fn:length(binhluan)}) Bình luận</h3>
							<div class="comment-list">
								<style>
									.dgpanel {
									    max-height: 1000px;
									    overflow: scroll;
									}
								</style>
							<div class="dgpanel">
								<c:forEach var="bl" items="${binhluan}">
									<c:if test="${bl.subid == 0}">
										<div class="comment-item">
											<div class="media">
												<div class="media-left">
													<a href="#"><img src="${bl.users.img }" alt=""></a>
												</div>
												<div class="media-body">
													<div class="comment-date">${bl.createdate } bởi ${bl.users.fullname }</div>
													<div class="comment-title">${bl.content_main }</div>
												</div>
											</div>
												<c:choose>
													<c:when test="${user.id == null}">
															<a href="login.htm">Muốn trả lời bình luận? Nhấn vào đây để đăng nhập</a>
													</c:when>
														<c:when test="${user.id != null}">
														<div class="forms">
														<style>
																#rebl{
																    display: none;
																}
															</style>
															<script type="text/javascript">
																function showDiv() {
																    div = document.getElementById('rebl');
																    div.style.display = "block";
																}
																function hideDiv() {
																    div = document.getElementById('rebl');
																    div.style.display = "none";
																}
															</script>
															<a onclick="javascript:showDiv();">Trả lời</a>
										
																<data-example-id="basic-forms">
																<div class="form-body" id="rebl">
																	<form id="formItem" action="binhluan.htm" method="post">
																		<input value=${danhmuc } style="display:none;" name="danhmuc"/>
																		<input value=${link } style="display:none;" name="link"/>
																		<input value=${bl.idcmt } style="display:none;" name="subid"/>
																		<input value="${tintuc.id}" style="display:none;" name="idbv"/>
																		<input value="${user.id }" style="display:none;" name="userID"/>
																		<div class="form-group">
																			<label>Trả lời @${bl.users.fullname }:</label>
																			<input type="text" name="content"
																				placeholder="Nội dung" class="form-control" />
																		</div>
																		<button type="submit"
																			class="btn btn-default w3ls-button ">Trả lời</button>
																			<a
																				class="btn btn-default w3ls-button" onclick="hideDiv();">Hủy</a>
																	</form>												
																</div>
														</div>
													</c:when>
												</c:choose>
												<c:forEach  var="bl2" items="${binhluan2}">
													<c:if test="${bl2.subid == bl.idcmt }">
														<div class="comment-reply">
															<div class="media">
																<div class="media-left">
																	<a href="#"><img src="${bl2.users.img }" alt=""></a>
																</div>
																<div class="media-body">
																	<div class="comment-date">${bl2.createdate} bởi ${bl2.users.fullname }</div>
																	<div class="comment-title">${bl2.content_main }</div>
																</div>
															</div>
														</div>
													</c:if>
												</c:forEach>
										</div>
									</c:if>
									
								</c:forEach>
							</div>
							</div>
							<!-- /.comment-item -->
							<div class="comment-item">
								<h3>Đăng bình luận</h3>
								<c:choose>
										<c:when test="${user.id == null}">
											<a href="login.htm">Muốn đăng Bình luận? Nhấn vào đây để đăng nhập</a>
										</c:when>
										<c:when test="${user.id != null}">
										
										
										<div class="forms">
											
												<div class="form-body">
													<form id="formItem" action="binhluan.htm" method="post">
														<input value=${danhmuc } style="display:none;" name="danhmuc"/>
														<input value=${link } style="display:none;" name="link"/>
														<input value="${tintuc.id}" style="display:none;" name="idbv"/>
														<input value="${user.id }" style="display:none;" name="userID"/>
														<div class="form-group">
															<label for="exampleInputEmail1">Nội dung bình luận:</label>
															<input type="text" name="content"
																placeholder="Nội dung" class="form-control" />
														</div>
														<button type="submit"
															class="btn btn-default w3ls-button ">Đăng lên</button>
															<a
																class="btn btn-default w3ls-button">Hủy</a>
													</form>												
												</div>
										</div>
								</c:when>
								</c:choose>
								
						</div>
							<!-- /.comment-item -->
						</div>
						<div id="fb-root"></div>
						<script>
							(function(d, s, id) {
								var js, fjs = d.getElementsByTagName(s)[0];
								if (d.getElementById(id))
									return;
								js = d.createElement(s);
								js.id = id;
								js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=117453615599820';
								fjs.parentNode.insertBefore(js, fjs);
							}(document, 'script', 'facebook-jssdk'));
						</script>
						<div class="fb-comments fb_iframe_widget fb_iframe_widget_fluid"
							data-href="https://www.facebook.com/nguyencongtahng/${tintuc.categorys.url }/${tintuc.link }/${tintuc.id }.htm"
							data-numposts="10" data-width="100%" data-colorscheme="light"
							fb-xfbml-state="rendered">
							<span style="height: 833px;"><iframe id="f241e05281091e8"
									name="f29ff412809b898" 
									title="Facebook Social Plugin" class="fb_ltr"
									src="https://www.facebook.com/plugins/comments.php?api_key=&amp;channel_url=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FlY4eZXm_YWu.js%3Fversion%3D42%23cb%3Df22857f7996c358%26domain%3Dlienminh360.vn%26origin%3Dhttp%253A%252F%252Flienminh360.vn%252Ff268642811643c8%26relation%3Dparent.parent&amp;colorscheme=light&amp;href=http%3A%2F%2Flienminh360.vn%2Fesports%2Fksv-esports-xac-nhan-da-mua-duoc-samsung-galaxy%2F&amp;locale=en_US&amp;numposts=10&amp;sdk=joey&amp;skin=light&amp;width=100%25"
									style="border: none; overflow: hidden; height: 833px; width: 100%;"></iframe></span>
						</div>
					</div>
				</div>
			</div>
		</div></div>
		<!-- /.main -->
		<script type="text/javascript">
		    function fbshareCurrentPage()
		    {window.open("https://www.facebook.com/sharer/sharer.php?u="+escape(window.location.href)+"&t="+document.title, '', 
		    'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');
		    return false; }
		</script>
</body>
</html>