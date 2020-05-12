<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html lang="en">
<head>
<title>Trang chi tiết</title>
<link href="theme/css/bootstrap.min.css" rel="stylesheet">
<link href="theme/css/animate.css" rel="stylesheet">
<link href="theme/css/owl.carousel.css" rel="stylesheet">
<link href="theme/css/jquery.bxslider.css" rel="stylesheet">
<link href="theme/css/cloud-zoom.css" rel="stylesheet">
<link href="theme/css/style.css" rel="stylesheet">
<link href="theme/css/responsive.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic,700,700italic,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oswald'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
	<div class="breadcrumbs">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.htm">Trang chủ</a></li>
				<li><a>Trang chi tiết sản phẩm</a></li>
			</ul>
		</div>
	</div>
	<!-- /.breadcrumbs -->

	<div class="main">
		<div class="container">
			<div class="row">
				<div class="col-sm-9 col-right">
					<div class="product-view">
						<div class="row">
							<div class="col-sm-5">
								<div class="product-img-box">
									<p class="product-image">
										<a href="files/sanpham/${details.img }" class="cloud-zoom"
											id="ma-zoom1"> <img src="files/sanpham/${details.img }"
											alt="Fusce aliquam" title="Fusce aliquam" />
										</a>
									</p>
									<div class="more-views thumbnail-container">
										<ul class="bxslider">
											<li class="thumbnail-item"><a
												href="files/sanpham/${details.img1 }"
												class="cloud-zoom-gallery" title=""
												rel="useZoom: 'ma-zoom1', smallImage: 'files/sanpham/${details.img1 }'">
													<img src="files/sanpham/${details.img1 }" alt="" />
											</a></li>
											<li class="thumbnail-item"><a
												href="files/sanpham/${details.img2 }"
												class="cloud-zoom-gallery" title=""
												rel="useZoom: 'ma-zoom1', smallImage: 'files/sanpham/${details.img2 }'">
													<img src="files/sanpham/${details.img2 }" alt="" />
											</a></li>
											<li class="thumbnail-item"><a
												href="files/sanpham/${details.img3 }"
												class="cloud-zoom-gallery" title=""
												rel="useZoom: 'ma-zoom1', smallImage: 'files/sanpham/${details.img3 }'">
													<img src="files/sanpham/${details.img3 }" alt="" />
											</a></li>
											<li class="thumbnail-item"><a
												href="files/sanpham/${details.img }"
												class="cloud-zoom-gallery" title=""
												rel="useZoom: 'ma-zoom1', smallImage: 'files/sanpham/${details.img }'">
													<img src="files/sanpham/${details.img }" alt="" />
											</a></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="product-shop col-sm-7">
								<div class="product-name">
									<h1>${details.name }</h1>
								</div>
								<div class="ratings">
									<div class="rating-box">
										<div style="width: 67%" class="rating"></div>
									</div>
									<span class="amount"><a href="#">${fn:length(danhgia)}
											Lượt đánh giá</a></span>
								</div>
								<div class="box-container2">
									<div class="price-box">
										<p class="special-price">
											<span class="price-label">Special Price</span> <span
												id="product-price-1" class="price"> <fmt:formatNumber
													type="number" pattern="###,###" value="${details.price}" />
												VNĐ
											</span>
										</p>
										<p class="old-price">
											<span class="price-label">Regular Price:</span> <span
												id="old-price-1" class="price"><fmt:formatNumber
													type="number" pattern="###,###" value="${details.gianhap}" />
												VND</span>
										</p>
									</div>
								</div>
								<a id="tb"></a>
								<div class="short-description">
									<div class="std">${details.description }</div>
								</div>
								<p class="availability in-stock">
									Trạng thái:
									<c:choose>
										<c:when test="${detail.status == True }">
											<span>Còn hàng</span>
										</c:when>
										<c:when test="${detail.status == False }">
											<span>Hết hàng</span>
										</c:when>
									</c:choose>
								</p>
								<form class="form-horizontal">
									<div class="form-group">
										<label class="col-md-2 col-sm-3 control-label">Size <em>*</em></label>
										<div class="col-sm-7">
											<select class="form-control">
												<option value="">-- Please Select --</option>
												<option value="2">L +$2.00</option>
												<option value="1">M +$1.00</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 col-sm-3 control-label">Color <em>*</em></label>
										<div class="col-sm-7">
											<select class="form-control">
												<option value="">-- Please Select --</option>
												<option value="4">black +$2.00</option>
												<option value="3">blue +$1.00</option>
												<option value="5">yellow +$1.00</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-2 col-sm-3 control-label">Quantity:</label>
										<div class="col-md-3 col-sm-5">
											<div class="input-group qty">
												<span class="input-group-btn">
													<button class="btn" type="button">-</button>
												</span> <input type="text" class="form-control" value="3">
												<span class="input-group-btn">
													<button class="btn" type="button">+</button>
												</span>
											</div>
											<!-- /input-group -->
										</div>
									</div>
									<button type="submit" class="btn btn-danger btn-cart">Add
										to cart</button>
									<button type="button" class="btn btn-default btn-wishlist">Add
										to wishlist</button>
									<button type="button" class="btn btn-default btn-compare">Add
										to compare</button>
								</form>
							</div>
							<!-- /.product-shop -->
						</div>
						<div class="product-tab tab-custom">
							<c:set var="trungbinhdg" value="0"></c:set>

							<ul class="nav nav-tabs">
								<li class="active"><a href="#product-desc"
									data-toggle="tab">Thông số kỹ thuật</a></li>
								<li><a href="#product-review" data-toggle="tab">Đánh
										giá sản phẩm</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="product-desc">
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">
											<div id="tab4" class="content_scroll_tab"
												style="display: block;">
												<p>&nbsp;</p>
												<table style="width: 100%; margin-top: -80px;">
													<tbody>
														<tr style="height: 15pt;">

														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Hãng
																		sản xuất</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.hangsanxuat}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Chủng
																		loại</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.chungloai}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Part
																		Number</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p style="margin: 2pt 0in;">
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif'; color: black;">${tskt.partNumber}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Mầu
																		sắc</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.mausac}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15.25pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 15.25pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Bộ
																		vi xử lý</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 15.25pt;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.bovisuly}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Chipset</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.chipset}
																	</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Bộ
																		nhớ trong</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p>
																	<strong><span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.bonhotrong}
																	</span></strong>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Số
																		khe cắm</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.sokhecam}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Dung
																		lượng tối đa</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.dungLuongtoida}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 16.15pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 16.15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">VGA</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 16.15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<strong><span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.vga}</span></strong>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Ổ
																		cứng</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p>
																	<strong><span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.ocung}</span></strong>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Ổ
																		quang</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.oquang}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Card
																		Reader</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.cardreader}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Bảo
																		mật, công nghệ</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<strong><span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif'; color: black;">
																			${tskt.baomat}</span></strong>
																</p>
															</td>
														</tr>
														<tr style="height: 10.75pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 10.75pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Màn
																		hình </span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 10.75pt;"
																width="384">
																<p>
																	<strong><span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif'; color: black;">${tskt.manhinh}</span></strong>
																</p>
															</td>
														</tr>
														<tr style="height: 13pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 13pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Webcam</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 13pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.webcam}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Audio</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif'; color: black;">${tskt.audio}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Giao
																		tiếp mạng</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.giaotiepmang}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Giao
																		tiếp không dây</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.giaotiepkhonggiay}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Cổng
																		giao tiếp</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif'; color: black;">${tskt.conggiaotiep}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Pin</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.pin}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 17.5pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 17.5pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Kích
																		thước </span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 17.5pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.kichthuoc}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Cân
																		nặng</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.cannang}
																	</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td
																style="padding: 0in; width: 104.25pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Hệ
																		điều hành</span>
																</p>
															</td>
															<td
																style="padding: 0in; width: 288.2pt; height: 15pt; background: #f0f0f0 none repeat scroll 0% 0%;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.hedieuhanh}</span>
																</p>
															</td>
														</tr>
														<tr style="height: 15pt;">
															<td style="padding: 0in; width: 104.25pt; height: 15pt;"
																width="139">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">Phụ
																		kiện đi kèm</span>
																</p>
															</td>
															<td style="padding: 0in; width: 288.2pt; height: 15pt;"
																width="384">
																<p>
																	<span
																		style="font-size: 10pt; font-family: 'Arial', 'sans-serif';">${tskt.phukiendikem}</span>
																</p>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>

								<div class="tab-pane" id="product-review">
									<h3>(${fn:length(danhgia)})Lượt đánh giá</h3>
									<c:forEach var="dg" items="${danhgia}">
										<c:set var="trungbinhdg" value="${trungbinhdg + dg.star }"></c:set>
										<div class="comment-item">
											<div class="media">
												<div class="media-left">
													<a href="#"><img src="${dg.user.img }" alt=""></a>
												</div>
												<div class="media-body">
													<div class="comment-date">${dg.createDate }-
														${dg.user.fullname}</div>
													<div class="comment-title">
														<span class="fa fa-star ${dg.star >= 1 ? 'checked':''}"></span>
														<span class="fa fa-star ${dg.star >= 2 ? 'checked':''}"></span>
														<span class="fa fa-star ${dg.star >= 3 ? 'checked':''}"></span>
														<span class="fa fa-star ${dg.star >= 4 ? 'checked':''}"></span>
														<span class="fa fa-star ${dg.star == 5 ? 'checked':''}"></span>
													</div>${dg.description }
												</div>
											</div>
										</div>
									</c:forEach>
									<input type="hidden" id="settb"
										value="${trungbinhdg / fn:length(danhgia)}" />
									<script type="text/javascript">
										$(document)
												.ready(
														function() {
															$('#tb')
																	.text(
																			$(
																					'#settb')
																					.val()
																					+ "/5 điểm đánh giá");
														})
									</script>
									<c:choose>
										<c:when test="${user.id == null}">
											<a href="login.htm">Muốn đăng đánh giá sản phẩm? Nhấn vào
												đây để đăng nhập</a>
										</c:when>
										<c:when test="${user.id != null}">
											<div class="forms">
												<div class="form-grids widget-shadow"
													data-example-id="basic-forms">
													<div class="form-body">
														<form id="formItem" action="danhgia.htm" method="post">
															<input value="${details.id }" style="display: none;"
																name="idsp" /> <input value="${user.id }"
																style="display: none;" name="userID" />
															<div class="form-group">
																<a style="width: 100px" href="#"><img
																	src="${dg.user.img }" alt="${dg.user.fullname}"></a>
																<label for="exampleInputEmail1">Điểm đánh giá:</label> <input
																	hidden="" id="rating" value="" name="rating" />
																<fieldset class="rating">
																	<input type="radio" id="star5" onclick="setsao(5);"
																		value="5" /><label class="full" for="star5"
																		title="Tốt - 5 sao"></label> <input type="radio"
																		id="star4" onclick="setsao(4);" value="4" /><label
																		class="full" for="star4" title="khá tốt - 4 sao"></label>
																	<input type="radio" id="star3" onclick="setsao(3);"
																		value="3" /><label class="full" for="star3"
																		title="Bình thường - 3 sao"></label> <input
																		type="radio" id="star2" onclick="setsao(2);" value="2" /><label
																		class="full" for="star2" title="Không ổn lắm - 2 sao"></label>
																	<input type="radio" id="star1" onclick="setsao(1);"
																		value="1" /><label class="full" for="star1"
																		title="Rất tệ - 1 sao"></label>
																</fieldset>
																<script type="text/javascript">
																	function setsao(
																			sao) {
																		$(
																				'#rating')
																				.val(
																						sao);
																	}
																</script>
															</div>
															<div class="form-group">
																<label for="exampleInputEmail1">Nội dung đánh
																	giá:</label> <input type="text" name="content"
																	placeholder="Nội dung" class="form-control" />
															</div>
															<button type="submit"
																class="btn btn-default w3ls-button ">Đăng lên</button>
															<a href="detail.htm" class="btn btn-default w3ls-button">Hủy</a>
														</form>
													</div>
												</div>
											</div>
										</c:when>
									</c:choose>
								</div>
								<div class="tab-pane" id="product-tags">...</div>
							</div>
						</div>
						<!-- /.product-tab -->
					</div>
					<!-- /.product-view -->
					<div class="featuredproductslider-container">
						<div class="title-group1">
							<h2>Sản phẩm nổi bật</h2>
						</div>
						<div id="featured-products" class="owl-container">
							<div class="owl">
								<c:forEach var="t" items="${sanphambc }" varStatus="status">
									<c:set var="dem" value="${status.index + 1 }"></c:set>
									<c:choose>
										<c:when test="${currentpage > 1 }">
											<c:set var="dem"
												value="${status.index + pagesize * (currentpage -1) +1 }"></c:set>
										</c:when>
									</c:choose>
									<div class='productslider-item item'>
										<div class="item-inner">
											<div class="images-container">
												<div class="product_icon">
													<div class='new-icon'>
														<span>new</span>
													</div>
												</div>
												<a href="detail/${t.id}.htm" title="Nunc facilisis"
													class="product-image"> <img style="height: 250px;"
													src="files/sanpham/${t.img }" alt="Nunc facilisis" />
												</a>
												<div class="box-hover">
													<ul class="add-to-links">
														<li><a href="#" class="link-quickview">Quick View</a></li>
														<li><a href="#" class="link-wishlist">Add to
																Wishlist</a></li>
														<li><a href="#" class="link-compare">Add to
																Compare</a></li>
														<li><a href="detail.htm" class="link-cart">Add to
																Cart</a></li>
													</ul>
												</div>
											</div>
											<div class="des-container">
												<h2 class="product-name">
													<a href="detail/${t.id}.htm" title="Nunc facilisis">${t.name }</a>
												</h2>
												<div class="price-box">
													<p class="special-price">
														<span class="price-label">Special Price</span> <span
															class="price"><fmt:formatNumber type="number"
																pattern="###,###" value="${t.price}" /> VNĐ</span>
													</p>
													<p class="old-price">
														<span class="price-label">Regular Price: </span> <span
															class="price"><fmt:formatNumber type="number"
																pattern="###,###" value="${t.gianhap}" /> VNĐ</span>
													</p>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<!-- /.featuredproductslider-container -->
				</div>
				<div class="fs-dtckr">
					<!-- /.col-right -->
					<div class="col-sm-3 col-left">
						<div class="block">
							<div class="title-group">
								<h2>Tỉnh thành</h2>
							</div>
							<div class="owl">
								<div class="fs-fshop-ul">
									<div class="fs-fshop-li fs-fshop-liadd">
										<select class="form-control">
											<option data-tokens="H&#224; Nội Ha Noi" value="26">H&#224;
												Nội</option>
											<option data-tokens="Hồ Ch&#237; Minh Ho Chi Minh"
												selected="selected" value="23">Hồ Ch&#237; Minh</option>
											<option data-tokens="Đ&#224; Nẵng Da Nang" value="17">Đ&#224;
												Nẵng</option>
											<option data-tokens="Hải Ph&#242;ng Hai Phong" value="28">Hải
												Ph&#242;ng</option>
											<option data-tokens="An Giang An Giang" value="1">An
												Giang</option>
											<option data-tokens="Bắc Giang Bac Giang" value="4">Bắc
												Giang</option>
											<option data-tokens="Bắc Kạn Bac Kan" value="5">Bắc
												Kạn</option>
											<option data-tokens="Bạc Li&#234;u Bac Lieu" value="6">Bạc
												Li&#234;u</option>
											<option data-tokens="Bắc Ninh Bac Ninh" value="7">Bắc
												Ninh</option>
											<option data-tokens="Bến Tre Ben Tre" value="10">Bến
												Tre</option>
											<option data-tokens="B&#236;nh Định Binh Dinh" value="3">B&#236;nh
												Định</option>
											<option data-tokens="B&#236;nh Dương Binh Duong" value="2">B&#236;nh
												Dương</option>
											<option data-tokens="B&#236;nh Phước Binh Phuoc" value="8">B&#236;nh
												Phước</option>
											<option data-tokens="B&#236;nh Thuận Binh Thuan" value="11">B&#236;nh
												Thuận</option>
											<option data-tokens="C&#224; Mau Ca Mau" value="13">C&#224;
												Mau</option>
											<option data-tokens="Cần Thơ Can Tho" value="14">Cần
												Thơ</option>
											<option data-tokens="Cao Bằng Cao Bang" value="12">Cao
												Bằng</option>
											<option data-tokens="Đak Lak Dak Lak" value="16">Đak
												Lak</option>
											<option data-tokens="Đak N&#244;ng Dak Nong" value="19">Đak
												N&#244;ng</option>
											<option data-tokens="Điện Bi&#234;n Dien Bien" value="15">Điện
												Bi&#234;n</option>
											<option data-tokens="Đồng Nai Dong Nai" value="18">Đồng
												Nai</option>
											<option data-tokens="Đồng Th&#225;p Dong Thap" value="20">Đồng
												Th&#225;p</option>
											<option data-tokens="Gia Lai Gia Lai" value="21">Gia
												Lai</option>
											<option data-tokens="H&#224; Giang Ha Giang" value="25">H&#224;
												Giang</option>
											<option data-tokens="H&#224; Nam Ha Nam" value="27">H&#224;
												Nam</option>
											<option data-tokens="H&#224; Tĩnh Ha Tinh" value="29">H&#224;
												Tĩnh</option>
											<option data-tokens="Hải Dương Hai Duong" value="24">Hải
												Dương</option>
											<option data-tokens="Hậu Giang Hau Giang" value="32">Hậu
												Giang</option>
											<option data-tokens="H&#242;a B&#236;nh Hoa Binh" value="22">H&#242;a
												B&#236;nh</option>
											<option data-tokens="Huế Hue" value="31">Huế</option>
											<option data-tokens="Hưng Y&#234;n Hung Yen" value="33">Hưng
												Y&#234;n</option>
											<option data-tokens="Kh&#225;nh H&#242;a Khanh Hoa"
												value="35">Kh&#225;nh H&#242;a</option>
											<option data-tokens="Ki&#234;n Giang Kien Giang" value="34">Ki&#234;n
												Giang</option>
											<option data-tokens="Kon Tum Kon Tum" value="36">Kon
												Tum</option>
											<option data-tokens="Lai ch&#226;u Lai chau" value="39">Lai
												ch&#226;u</option>
											<option data-tokens="L&#226;m Đồng Lam Dong" value="40">L&#226;m
												Đồng</option>
											<option data-tokens="Lạng Sơn Lang Son" value="41">Lạng
												Sơn</option>
											<option data-tokens="L&#224;o Cai Lao Cai" value="38">L&#224;o
												Cai</option>
											<option data-tokens="Long An Long An" value="37">Long
												An</option>
											<option data-tokens="Nam Định Nam Dinh" value="44">Nam
												Định</option>
											<option data-tokens="Nghệ An Nghe An" value="42">Nghệ
												An</option>
											<option data-tokens="Ninh B&#236;nh Ninh Binh" value="43">Ninh
												B&#236;nh</option>
											<option data-tokens="Ninh Thuận Ninh Thuan" value="45">Ninh
												Thuận</option>
											<option data-tokens="Ph&#250; Thọ Phu Tho" value="46">Ph&#250;
												Thọ</option>
											<option data-tokens="Ph&#250; Y&#234;n Phu Yen" value="47">Ph&#250;
												Y&#234;n</option>
											<option data-tokens="Quảng B&#236;nh Quang Binh" value="48">Quảng
												B&#236;nh</option>
											<option data-tokens="Quảng Nam Quang Nam" value="51">Quảng
												Nam</option>
											<option data-tokens="Quảng Ng&#227;i Quang Ngai" value="50">Quảng
												Ng&#227;i</option>
											<option data-tokens="Quảng Ninh Quang Ninh" value="49">Quảng
												Ninh</option>
											<option data-tokens="Quảng Trị Quang Tri" value="52">Quảng
												Trị</option>
											<option data-tokens="S&#243;c Trăng Soc Trang" value="54">S&#243;c
												Trăng</option>
											<option data-tokens="Sơn La Son La" value="53">Sơn
												La</option>
											<option data-tokens="T&#226;y Ninh Tay Ninh" value="58">T&#226;y
												Ninh</option>
											<option data-tokens="Th&#225;i B&#236;nh Thai Binh"
												value="55">Th&#225;i B&#236;nh</option>
											<option data-tokens="Th&#225;i Nguy&#234;n Thai Nguyen"
												value="59">Th&#225;i Nguy&#234;n</option>
											<option data-tokens="Thanh H&#243;a Thanh Hoa" value="57">Thanh
												H&#243;a</option>
											<option data-tokens="Tiền Giang Tien Giang" value="56">Tiền
												Giang</option>
											<option data-tokens="Tr&#224; Vinh Tra Vinh" value="61">Tr&#224;
												Vinh</option>
											<option data-tokens="Tuy&#234;n Quang Tuyen Quang" value="60">Tuy&#234;n
												Quang</option>
											<option data-tokens="Vĩnh Long Vinh Long" value="62">Vĩnh
												Long</option>
											<option data-tokens="Vĩnh Ph&#250;c Vinh Phuc" value="63">Vĩnh
												Ph&#250;c</option>
											<option data-tokens="Vũng T&#224;u Vung Tau" value="9">Vũng
												T&#224;u</option>
											<option data-tokens="Y&#234;n B&#225;i Yen Bai" value="64">Y&#234;n
												B&#225;i</option>
										</select>
									</div>
									<br>
									<div class="fs-fshop-li fs-fshop-liadd">
										<select class="form-control">
											<option data-hidden="true" value="">Chọn Quận/ Huyện</option>

											<option data-tokens="Quận 1 Quan 1" value="225">Quận
												1</option>
											<option data-tokens="Quận 10 Quan 10" value="234">Quận
												10</option>
											<option data-tokens="Quận 11 Quan 11" value="235">Quận
												11</option>
											<option data-tokens="Quận 12 Quan 12" value="236">Quận
												12</option>
											<option data-tokens="Quận 2 Quan 2" value="226">Quận
												2</option>
											<option data-tokens="Quận 3 Quan 3" value="227">Quận
												3</option>
											<option data-tokens="Quận 4 Quan 4" value="228">Quận
												4</option>
											<option data-tokens="Quận 5 Quan 5" value="229">Quận
												5</option>
											<option data-tokens="Quận 6 Quan 6" value="230">Quận
												6</option>
											<option data-tokens="Quận 7 Quan 7" value="231">Quận
												7</option>
											<option data-tokens="Quận 8 Quan 8" value="232">Quận
												8</option>
											<option data-tokens="Quận 9 Quan 9" value="233">Quận
												9</option>
											<option
												data-tokens="Huyện B&#236;nh Ch&#225;nh Huyen Binh Chanh"
												value="238">Huyện B&#236;nh Ch&#225;nh</option>
											<option data-tokens="Quận B&#236;nh T&#226;n Quan Binh Tan"
												value="239">Quận B&#236;nh T&#226;n</option>
											<option data-tokens="Quận B&#236;nh Thạnh Quan Binh Thanh"
												value="237">Quận B&#236;nh Thạnh</option>
											<option data-tokens="Huyện Cần Giờ Huyen Can Gio" value="241">Huyện
												Cần Giờ</option>
											<option data-tokens="Huyện Củ Chi Huyen Cu Chi" value="240">Huyện
												Củ Chi</option>
											<option data-tokens="Quận G&#242; Vấp Quan Go Vap"
												value="242">Quận G&#242; Vấp</option>
											<option data-tokens="Huyện H&#243;c M&#244;n Huyen Hoc Mon"
												value="243">Huyện H&#243;c M&#244;n</option>
											<option data-tokens="Huyện Nh&#224; B&#232; Huyen Nha Be"
												value="244">Huyện Nh&#224; B&#232;</option>
											<option data-tokens="Quận Ph&#250; Nhuận Quan Phu Nhuan"
												value="245">Quận Ph&#250; Nhuận</option>
											<option data-tokens="Quận T&#226;n B&#236;nh Quan Tan Binh"
												value="246">Quận T&#226;n B&#236;nh</option>
											<option data-tokens="Quận T&#226;n Ph&#250; Quan Tan Phu"
												value="248">Quận T&#226;n Ph&#250;</option>
											<option data-tokens="Quận Thủ Đức Quan Thu Duc" value="247">Quận
												Thủ Đức</option>
										</select>
									</div>
								</div>
								<br> <img width="340" height="397" alt="banner-sidebar-1"
									class="attachment-full" style="max-width: 100%;"
									src="http://lienminh360.vn/wp-content/uploads/2017/11/san-laptop-298x397.png">

							</div>
						</div>
					</div>
					<!-- /.col-left -->
				</div>
			</div>
		</div>
	</div>
	<!-- /.main -->
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="theme/js/bootstrap.min.js"></script>
	<script src="theme/js/owl.carousel.min.js"></script>
	<script src="theme/js/jquery.bxslider.min.js"></script>
	<script src="theme/js/cloud-zoom.js"></script>
	<script src="theme/js/main.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			/* special-offer slider */
			$("#special-offer .owl").owlCarousel({
				autoPlay : false,
				items : 1,
				itemsDesktop : [ 1199, 1 ],
				itemsDesktopSmall : [ 991, 1 ],
				itemsTablet : [ 767, 2 ],
				itemsMobile : [ 480, 1 ],
				slideSpeed : 3000,
				paginationSpeed : 3000,
				rewindSpeed : 3000,
				navigation : true,
				stopOnHover : true,
				pagination : false,
				scrollPerPage : true,
			});
			/* featured-products slider */
			$("#featured-products .owl").owlCarousel({
				autoPlay : false,
				items : 4,
				itemsDesktop : [ 1199, 3 ],
				itemsDesktopSmall : [ 991, 2 ],
				itemsTablet : [ 767, 2 ],
				itemsMobile : [ 480, 1 ],
				slideSpeed : 3000,
				paginationSpeed : 3000,
				rewindSpeed : 3000,
				navigation : true,
				stopOnHover : true,
				pagination : false,
				scrollPerPage : true,
			});
			/* .thumbnail-container product image slider */
			$('.thumbnail-container .bxslider').bxSlider({
				slideWidth : 94,
				slideMargin : 5,
				minSlides : 4,
				maxSlides : 4,
				pager : false,
				speed : 500,
				pause : 3000
			});
		});
	</script>
</body>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.checked {
	color: orange;
}
</style>
</html>
