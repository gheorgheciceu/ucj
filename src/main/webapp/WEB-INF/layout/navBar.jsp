
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>SDMS</title>

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/fonts.css" />
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.mmenu.all.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main-menu.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/rev-settings.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login-signup.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.bxslider.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flipclock.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive-tables.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/version.css" />
<style type="text/css">
@import
	url(http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic)
	;
</style>



<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css"
	id="template-color" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/theme-options.css.css" />
<%-- <link id="colors" rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/colors/yellow.css"> --%>

<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');

	ga('create', 'UA-46810500-1', 'auto');
	ga('send', 'pageview');
</script>
<script type="text/javascript">
	setTimeout(function() {
		var a = document.createElement("script");
		var b = document.getElementsByTagName("script")[0];
		a.src = document.location.protocol
				+ "//script.crazyegg.com/pages/scripts/0017/8199.js?"
				+ Math.floor(new Date().getTime() / 3600000);
		a.async = true;
		a.type = "text/javascript";
		b.parentNode.insertBefore(a, b)
	}, 1);
</script>
</head>

<body>
	<!-- 	<div id="theme-option">
		<div class="theme-opt-wrapper">
			<p>
				Choose Color <br> <i style="font-size: 11px;"> * You can
					use Unlimited Colors </i>
			</p>
			<ul class="choose-color">
				<li><a href="#" class="color red">&nbsp;</a></li>
				<li><a href="#" class="color green">&nbsp;</a></li>
				<li><a href="#" class="color brown">&nbsp;</a></li>
				<li><a href="#" class="color yellow">&nbsp;</a></li>
				<li><a href="#" class="color blue">&nbsp;</a></li>
			</ul>
			<p>Choose Layout</p>
			<p class="it-select-layout">
				<input type="radio" id="it-select-full-layout"
					name="it-select-layout-choice" value="full" checked="checked">
				<label for="it-select-full-layout">Full</label> <input type="radio"
					id="it-select-boxed-layout" name="it-select-layout-choice"
					value="boxed"> <label for="it-select-boxed-layout">Boxed</label>
			</p>
			<a href="#" class="btn btn-default reset"
				onClick="return it_option_reset_CLICK();">Reset</a>
		</div>
		end:theme-opt-wrapper
		<a href="#" class="open-close-button"><i class="fa fa-cog"></i></a>
		open-close-button
	</div>
	end:Theme-option -->

	<div id="wr-wrapper" class="wr-wrapper wr-wrapper-v3">
		<header id="wr-header" class="custom-header">
			<!-- <div class="wr-top-header">
				<div class="container">
					<p class="custommer-welcome">Welcome back, AnhGreen</p>
					<div class="top-menu main-nav">
						<ul>
							<li><a href="#">Language</a></li>
							<li class="active"><a href="#">My Wishlist</a></li>
							<li><a class="cd-signin popup" href="#0">My Account</a></li>
							<li><a href="#">Logout</a></li>
							<li class="cart"><a href="#">$0.00</a></li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
			</div> -->
			<!-- end top header -->

			<div class="wr-main-header">
				<div class="container">
					<div class="wr-logo">
						<a href="/"><img
							src="${pageContext.request.contextPath}/resources/images/autoRallyLogo.jpg"
							alt=""></a>
					</div>
					<!-- end logo -->
					<div class="contact-header">
						<ul>
							<li><i class="fa fa-mobile"></i>
								<h3>
									Administrativ<br> <a href="tel:(+84) 61234567">0258
										422 588</a>
								</h3> <!-- <p>Luni - Vineri: 10:00am - 05:00pm</p></li> -->
							<li><i class="fa fa-user"></i>
								<h3>
									<a href="mailto:oguts@support.com">${securityUser}</a>
								</h3>
								<p>
									<a href="/logout" class="logout">Deconectare</a>
								</p></li>
						</ul>
					</div>
					<!-- end contact header -->
					<div class="clear"></div>
				</div>
			</div>
			<!-- end main header -->

			<div class="wr-bot-header">
				<div class="container">
					<div class="wr-searchbox">
						<form action="#" id="searchform" method="get" role="search">
							<input type="text" placeholder="Search..." id="s" name="s"
								value=""> <input type="submit" value="Search"
								id="searchsubmit">
						</form>
					</div>
					<!-- end searchbox -->

					<div class="wr-main-menu">
						<ul>

							<li class="active"><a href="/index"><i
									class="fa fa-home home"></i></a></li>
							<security:authorize
								access="hasAnyRole('ROLE_ADMIN', 'ROLE_PROFESSOR')">
								<li><a href="/search-professor">Instructor</a>
									<ul class="sub-menu">
										<li><a href="/search-professor">Instructori</a></li>
										<li><a href="/register-professor">Inregistrare</a></li>
									</ul></li>
							</security:authorize>
							<security:authorize
								access="hasAnyRole('ROLE_ADMIN', 'ROLE_PROFESSOR')">
								<li><a href="/search-studentType">Elev</a>
									<ul class="sub-menu">
										<li><a href="/register-studentType">Inregistrare</a></li>
										<li><a href="/search-studentType">Elevi</a></li>
									</ul></li>
							</security:authorize>
							<security:authorize access="hasRole('ROLE_ADMIN')">
								<li><a href="/search-categoryType">Categorie</a>
									<ul class="sub-menu">
										<li><a href="/register-categoryType">Inregistrare</a></li>
										<li><a href="/search-categoryType">Categori</a></li>
									</ul></li>
							</security:authorize>

							<security:authorize access="hasRole('ROLE_PROFESSOR')">
								<li><a href="/timetable">Programari</a></li>
							</security:authorize>
							<security:authorize access="hasRole('ROLE_STUDENT')">
								<li><a href="/student-timetable">Programari</a></li>
							</security:authorize>
							<li><a href="contact.html">Contact</a></li>
							<!-- <li class="mega-menu"><a href="sc-columns.html">Shortcode</a>
								<div class="inner">
									<div class="row">
										<div class="col-lg-8 col-md-8">
											<div class="row">
												<div class="col-lg-4 col-md-4">
													<h3>Typography</h3>
													<ul class="menu">
														<li><a href="sc-columns.html"><i
																class="fa fa-columns"></i> Columns</a></li>
														<li><a href="sc-heading.html"><i
																class="fa fa-header"></i> Headings</a></li>
														<li><a href="sc-quote.html"><i
																class="fa fa-quote-left"></i> Blockquote</a></li>
														<li><a href="sc-dropcap.html"><i
																class="fa fa-indent"></i> Dropcaps</a></li>
														<li><a href="sc-highlight.html"><i
																class="fa fa-magic"></i> Highlight</a></li>
														<li><a href="sc-style-list.html"><i
																class="fa fa-list-ul"></i> Custom list</a></li>
														<li><a href="sc-divider.html"><i
																class="fa fa-ellipsis-h"></i> Divider</a></li>
													</ul>
												</div>

												<div class="col-md-4">
													<h3>Common</h3>
													<ul class="menu">
														<li><a href="tabs.html"><i class="fa fa-folder-o"></i>
																Tabs</a></li>
														<li><a href="accordion.html"><i
																class="fa fa-caret-square-o-right"></i> Accordion /
																Toggle</a></li>
														<li><a href="sc-social-icon.html"><i
																class="fa fa-share-alt"></i> Social icons</a></li>
														<li><a href="buttons.html"><i
																class="fa fa-square-o"></i> Button</a></li>
														<li><a href="sc-messsage-box.html"><i
																class="fa fa-comment-o"></i> Message boxed / Alert</a></li>
														<li><a href="sc-table.html"><i
																class="fa fa-table"></i> Pricing table</a></li>
														<li><a href="sc-call-action.html"><i
																class="fa fa-mail-reply-all"></i> Callout box</a></li>
													</ul>
												</div>

												<div class="col-md-4">
													<h3>interactive</h3>
													<ul class="menu">

														<li><a href="sc-testimonials.html"> <i
																class="fa fa-quote-right"></i> Testimonials
														</a></li>
														<li><a href="services-box.html"> <i
																class="fa fa-wrench"></i> Services
														</a></li>
														<li><a href="sc-progress.html"> <i
																class="fa fa-tasks"></i> Progressbar
														</a></li>
														<li><a href="sc-post.html"> <i
																class="fa fa-pencil-square-o"></i> Latest posts
														</a></li>
														<li><a href="sc-team.html"> <i
																class="fa fa-users"></i> Team members
														</a></li>
														<li><a href="sc-image-banner.html"> <i
																class="fa fa-picture-o"></i> Image banner
														</a></li>
													</ul>
												</div>
											</div>
										</div>

										<div class="col-md-4">
											<div class="post-video">
												<!-- <a class="fancybox-media"
													href="https://www.youtube.com/watch?v=qrO4YZeyl0I"> <img
													src="images/video-mega-menu.jpg" alt=""> <span
													class="video-title">Karlie Kloss &amp; Daft Punk
														Photoshoot BTS</span>
												</a> 
											</div>
										</div>
									</div>
								</div> <!-- end mega menu </li>-->

							<!-- 			<li><a href="contact.html">Contact</a></li> -->


						</ul>
					</div>
					<!-- end wr main menu -->

					<div class="wr-mobile-menu">
						<a class="open-menu" href="#my-menu"><i class="fa fa-bars"></i></a>
						<nav id="my-menu">
							<ul>
								<li class="active"><a href="index_v1.html">Home</a>
									<ul class="sub-menu">
										<li><a href="index_v1.html">Full-width slider</a></li>
										<li><a href="index_v2.html">Boxed slider and icon
												boxes</a></li>
										<li><a href="index_v3.html">Boxed slider and top
												banners</a></li>
										<li><a href="index_v4.html">Promotion banners</a></li>
										<li><a href="index_v5.html">Full-screen slider</a></li>
									</ul></li>
								<li><a href="#">Pages</a>
									<ul class="sub-menu">
										<li><a href="about.html">About Us</a></li>
										<li><a href="services.html">Services</a></li>
										<li><a href="faqs.html">FAQs</a></li>
										<li><a href="under-construction.html">Under
												Construction</a></li>
										<li><a href="404.html">404 Error</a></li>
									</ul></li>
								<li><a href="products-list.html">Shop</a>
									<ul class="sub-menu">
										<li><a href="products-list.html">Category</a></li>
										<li><a href="products-details.html">Product details </a></li>
										<li><a href="cart.html">Cart</a></li>
									</ul></li>
								<li><a href="blog-list_v1.html">Blog</a>
									<ul class="sub-menu">
										<li><a href="blog-list_v1.html">Blog list with large
												thumb</a></li>
										<li><a href="blog-list_v2.html">Blog list with small
												thumb</a></li>
										<li><a href="blog-masonry.html">Blog masonry</a></li>
										<li><a href="blog-detail.html">Post details</a></li>
									</ul></li>
								<li><a href="sc-columns.html">Shortcode</a>
									<ul class="sub-menu">
										<li><a href="#">Typography</a>
											<ul class="sub-menu">
												<li><a href="sc-columns.html"><i
														class="fa fa-columns"></i> Columns</a></li>
												<li><a href="sc-heading.html"><i
														class="fa fa-header"></i> Headings</a></li>
												<li><a href="sc-quote.html"><i
														class="fa fa-quote-left"></i> Blockquote</a></li>
												<li><a href="sc-dropcap.html"><i
														class="fa fa-indent"></i> Dropcaps</a></li>
												<li><a href="sc-highlight.html"><i
														class="fa fa-magic"></i> Highlight</a></li>
												<li><a href="sc-style-list.html"><i
														class="fa fa-list-ul"></i> Custom list</a></li>
												<li><a href="sc-divider.html"><i
														class="fa fa-ellipsis-h"></i> Divider</a></li>
											</ul></li>
										<li><a href="#">Common</a>
											<ul class="sub-menu">
												<li><a href="tabs.html"><i class="fa fa-folder-o"></i>
														Tabs</a></li>
												<li><a href="accordion.html"><i
														class="fa fa-caret-square-o-right"></i> Accordion / Toggle</a></li>
												<li><a href="sc-social-icon.html"><i
														class="fa fa-share-alt"></i> Social icons</a></li>
												<li><a href="buttons.html"><i
														class="fa fa-square-o"></i> Button</a></li>
												<li><a href="sc-messsage-box.html"><i
														class="fa fa-comment-o"></i> Message boxed / Alert</a></li>
												<li><a href="sc-table.html"><i class="fa fa-table"></i>
														Pricing table</a></li>
												<li><a href="sc-call-action.html"><i
														class="fa fa-mail-reply-all"></i> Callout box</a></li>
											</ul></li>
										<li><a href="#">Interactive</a>
											<ul class="sub-menu">

												<li><a href="sc-testimonials.html"> <i
														class="fa fa-quote-right"></i> Testimonials
												</a></li>
												<li><a href="services-box.html"> <i
														class="fa fa-wrench"></i> Services
												</a></li>
												<li><a href="sc-progress.html"> <i
														class="fa fa-tasks"></i> Progressbar
												</a></li>
												<li><a href="sc-post.html"> <i
														class="fa fa-pencil-square-o"></i> Latest posts
												</a></li>
												<li><a href="sc-team.html"> <i class="fa fa-users"></i>
														Team members
												</a></li>
												<li><a href="sc-image-banner.html"> <i
														class="fa fa-picture-o"></i> Image banner
												</a></li>
											</ul></li>
									</ul></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</nav>
					</div>
					<!-- end mobile menu -->
				</div>
			</div>
			<!-- end bot header -->
		</header>



	</div>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.min.js"></script>
	<%-- 	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.mmenu.min.all.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/modernizr.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/login-signup.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/stellar.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/flipclock.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/responsive-tables.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.themepunch.plugins.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.themepunch.revolution.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fancybox-media.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/styleswitch.js"></script>