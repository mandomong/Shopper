<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>Shopping</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">

		<link href="resources/themes/css/bootstrappage.css" rel="stylesheet"/>

		<!-- global styles -->
		<link href="resources/themes/css/flexslider.css" rel="stylesheet"/>
		<link href="resources/themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="resources/themes/js/jquery-1.7.2.min.js"></script>
		<script src="resources/bootstrap/js/bootstrap.min.js"></script>
		<script src="resources/themes/js/superfish.js"></script>
		<script src="resources/themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">
							<li><a href="#">My Account</a></li>
							<li><a href="cart.html">Your Cart</a></li>
							<li><a href="checkout.html">Checkout</a></li>
							<li><a href="register.html">Login</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">
					<a href="index.html" class="logo pull-left"><img src="resources/themes/images/logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						<ul>
							<li><a href="./products.html">SKINCARE</a>
								<ul>
									<li><a href="./products.html">TONNER</a></li>
									<li><a href="./products.html">MOISTURIZERS</a></li>
									<li><a href="./products.html">ESSENCE</a></li>
								</ul>
							</li>

							<li><a href="./products.html">FACE</a>
								<ul>
									<li><a href="./products.html">FACE PRIMER</a></li>
									<li><a href="./products.html">FOUNDATION</a></li>
									<li><a href="./products.html">POWDER</a></li>
								</ul>
							</li>

							<li><a href="./products.html">EYES</a>
								<ul>
									<li><a href="./products.html">EYE LINER</a></li>
									<li><a href="./products.html">MASCARA</a></li>
									<li><a href="./products.html">SHADOW</a></li>
								</ul>
							</li>

							<li><a href="./products.html">LIPS</a>
								<ul>
									<li><a href="./products.html">LIPSTICK</a></li>
									<li><a href="./products.html">LIP GLOSS</a></li>
								</ul>
							</li>

							<li><a href="./products.html">FRAGRANCE</a></li>
						</ul>
					</nav>
				</div>
			</section>
			<section  class="homepage-slider" id="home-slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="resources/themes/img/main/main1.jpg" alt="" />
						</li>
						
						<li>
							<img src="resources/themes/img/main/main2.PNG" alt="" />
						</li>
						
						<li>
							<img src="resources/themes/img/main/main3.png" alt="" />
						</li>
						
						<li>
							<img src="resources/themes/img/main/main4.png" alt="" />
						</li>
						
						<li>
							<img src="resources/themes/images/carousel/banner-2.jpg" alt="" />
							<div class="intro">
								<h1>Mid season sale</h1>
								<p><span>Up to 50% Off</span></p>
								<p><span>On selected items online and in stores</span></p>
							</div>
						</li>
					</ul>
				</div>
			</section>
			
			<section class="header_text">
			<!-- 넣고싶은 내용 삽입 -->	
			</section>

			<section class="main-content">
				<div class="row">
					<div class="span12">
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">Feature <strong>Products</strong></span></span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel" class="myCarousel carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails">
											
											<!-- TODO : 반복문 돌려서 수정 -->
											<c:forEach items="${result1}" var="result">
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>
														<p><a href="item?itemno=${result.invenItemNum }"><img src="${result.url}" alt="" /></a></p>
														<a href="item?itemno=${result.invenItemNum }" class="title">${result.title }</a><br/>
														<a href="products.html" class="category">${result.manufacturer }</a>
														<p class="price">${result.price }원</p>
													</div>
												</li>
											</c:forEach>
												
											</ul>
										</div>
										<div class="item">
											<ul class="thumbnails">
											<c:forEach items="${result2}" var="result">
												<li class="span3">
													<div class="product-box">
														<p><a href="item?itemno=${result.invenItemNum }"><img src="${result.url}" alt="" /></a></p>
														<a href="item?itemno=${result.invenItemNum }" class="title">${result.title}</a><br/>
														<a href="products.html" class="category">${result.manufacturer }</a>
														<p class="price">${result.price }원</p>
													</div>
												</li>
											</c:forEach>	
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<br/>
						<div class="row">
						
						</div>
						
					</div>
				</div>
			</section>
			<section class="our_client">
				<h4 class="title"><span class="text">Manufactures</span></h4>
				<div class="row">
					<div class="span2">
						<a href="http://www.atopalm.co.kr/"><img alt="" src="resources/themes/img/logo/atopalm.png"></a>
					</div>
					<div class="span2">
						<a href="https://www.biotherm.co.kr/"><img alt="" src="resources/themes/img/logo/biotherm.png"></a>
					</div>
					<div class="span2">
						<a href="https://www.cnpmall.com/"><img alt="" src="resources/themes/img/logo/cnp.png"></a>
					</div>
					<div class="span2">
						<a href="http://hadalabousa.com/"><img alt="" src="resources/themes/img/logo/hadalabo.png"></a>
					</div>
					<div class="span2">
						<a href="http://www.maccosmetics.com/"><img alt="" src="resources/themes/img/logo/mac.png"></a>
					</div>
					<div class="span2">
						<a href="http://www.mamonde.com/"><img alt="" src="resources/themes/img/logo/mamonde.png"></a>
					</div>
				</div>
			</section>
			<section id="footer-bar">
				<div class="row">
					
					<div class="span12">
						<p class="logo"><img src="resources/themes/images/logo.png" class="site_logo" alt=""></p>
						<p><h6>이 페이지는 신세계아이엔씨 2016년 하반기 공채 인턴들이 만든 화장품 쇼핑몰 페이지 입니다.</h6></p>
					</div>
				</div>
			</section>
			<section id="copyright">
				<h5><span>Copyright 2017 shinsegae All right reserved.</span></h5>
			</section>
		</div>
		<script src="resources/themes/js/common.js"></script>
		<script src="resources/themes/js/jquery.flexslider-min.js"></script>
		<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
		</script>
    </body>
</html>