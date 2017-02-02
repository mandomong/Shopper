<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		
		<!-- bootstrap -->
		<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="resources/themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="resources/themes/css/main.css" rel="stylesheet"/>
		<link href="resources/themes/css/jquery.fancybox.css" rel="stylesheet"/>
				
		<!-- scripts -->
		<script src="resources/themes/js/jquery-1.7.2.min.js"></script>
		<script src="resources/bootstrap/js/bootstrap.min.js"></script>				
		<script src="resources/themes/js/superfish.js"></script>	
		<script src="resources/themes/js/jquery.scrolltotop.js"></script>
		<script src="resources/themes/js/jquery.fancybox.js"></script>
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
			<section class="header_text sub">
			<img class="pageBanner" src="resources/themes/img/banner.jpg" alt="New products" >
				<h4><span>Product Detail</span></h4>
			</section>
			<section class="main-content">				
				<div class="row">						
					<div class="span12">
						<div class="row">
							<div class="span4">
								<a href="themes/images/ladies/1.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 1"><img alt="" src="${result.url }"></a>												
								 
							</div>
							<div class="span5">
								<address>
									<br>
									<strong><h5>Brand: ${result.manufacturer }</h5></strong> <span></span>
								</address>									
								<h4><strong>Price: ${result.price }</strong></h4>
							</div>
							<div class="span5">
								<form class="form-inline">
									 
									<p>&nbsp;</p>
									<label><h5>Qty:</h5></label>
									<input type="text" class="span1" placeholder="1">
									<button class="btn btn-inverse" type="submit">Add to cart</button>
								</form>
							</div>							
						</div>
						<div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Description</a></li>
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home">${result.description }</div>
									 
								</div>							
							</div>						
							<div class="span9">	
								<br>
								 
								 
							</div>
						</div>
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
		<script>
			$(function () {
				$('#myTab a:first').tab('show');
				$('#myTab a').click(function (e) {
					e.preventDefault();
					$(this).tab('show');
				})
			})
			$(document).ready(function() {
				$('.thumbnail').fancybox({
					openEffect  : 'none',
					closeEffect : 'none'
				});
				
				$('#myCarousel-2').carousel({
                    interval: 2500
                });								
			});
		</script>
    </body>
</html>