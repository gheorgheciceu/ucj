<html>
<%@ include file="../layout/taglib.jsp"%>

<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/animations.css">
<link rel="stylesheet" href="/resources/css/main.css">

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
	
	<!-- Style CSS -->
    <link rel="stylesheet" type="text/css" href="/resources/css/colors/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" type="text/css" href="/resources/css/responsive.css">
    <!-- Theme Option CSS -->
    <link rel="stylesheet" href="/resources/css/theme-options.css" media="all">
    <!-- Style Switch -->
    <link id="colors" rel="stylesheet" type="text/css" href="/resources/css/colors/default.css">
    
     <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-46810500-1', 'auto');
        ga('send', 'pageview');

    </script>
    
</head>





<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {

					$(".triggerRemove").click(
							function(e) {
								e.preventDefault();
								$("#modalRemove .deactivateBtn").attr("href",
										$(this).attr("href"));
								$("#modalRemove").modal();
							});

					$(".triggerActiv").click(
							function(e) {
								e.preventDefault();
								$("#modalActiv .deactivateBtn").attr("href",
										$(this).attr("href"));
								$("#modalActiv").modal();
							});
				});
	</script>

	<script type="text/javascript">
		$(function() {
			$('a').tooltip({
				placement : 'bottom'
			});
		});
	</script>
	<c:if test="${param.deactivate eq true}">
		<div class="alert alert-success alertPoz">Voluntarul a fost
			dezactivat cu succes !</div>
	</c:if>
	<c:if test="${param.activate eq true}">
		<div class="alert alert-success alertPoz">Voluntarul a fost
			activat cu succes !</div>
	</c:if>
	<c:if test="${param.edited eq true}">
		<div class="alert alert-success alertPoz">Voluntarul a fost
			editat cu succes !</div>
	</c:if>
	
<div class="time">
	<section id="middle" class="darkgrey_section last_content_section">
		<div class="container">
			<div class="row">
				<!-- <div class="col-sm-12 text-center">
					<h2 class="block-header">
						<strong>Programari</strong> - Zanc Razvan
					</h2>
				</div> -->
			</div>
			<div class="row">
				<div class="text-center filters col-sm-12">
					
				</div>
			</div>
			
			<div class="row">
				 <div class="col-sm-12 text-center">
					<h2 class="block-header">
						<strong>Elev</strong> - ${studentType.firstName} ${studentType.lastName} ${studentType.password}
					</h2>
				</div> 
			</div>
			<div class="row">
				<div class="text-center filters col-sm-12">
					
				</div>
			</div>
		
			<div id="wr-main" class="element-page progress-page"> 
                             
                    <div id="content" class="col-md-12">
                    	<h2>Mini Progressbars</h2>
                    	<div class="mini-progress">
                        	<p class="name">Wordpress:</p>
                            <div class="progress yellow-bg">
                            	<div aria-valuetransitiongoal="60" class="progress-bar progress-violet"> 
                                	<span class="value">60%</span> 
                                </div>
                            </div>
                            
                            <p class="name">Photoshop:</p>
                            <div class="progress green-bg">
                            	<div aria-valuetransitiongoal="90" class="progress-bar progress-violet"> 
                                	<span class="value">90%</span> 
                                </div>
                            </div>
                            
                            <p class="name">HTML:</p>
                            <div class="progress blue-bg">
                            	<div aria-valuetransitiongoal="80" class="progress-bar progress-violet"> 
                                	<span class="value">80%</span> 
                                </div>
                            </div>
                            
                            <p class="name">CSS:</p>
                            <div class="progress purple-bg">
                            	<div aria-valuetransitiongoal="80" class="progress-bar progress-violet"> 
                                	<span class="value">80%</span> 
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <br>
                        <br>
                        </div>
                        </div>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="table-responsive">
						<table class="table table-striped table-bordered" id="timetable">
							<thead>
								<tr>

									<th>Nume</th>
									<th>Prenume</th>
									<th>Email</th>
									<th>Num&#259r de telefon</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${professor}" var="professor">
									<tr>
										<td class="white">${professor.lastName}</td>
										<td class="white">${professor.firstName}</td>
										<td class="white">${professor.email}</td>
										<td class="white">${professor.phone}</td>
										
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="/resources/js/vendor/jquery-1.11.0.min.js"></script>
	<script src="/resources/js/vendor/jquery-migrate-1.2.1.min.js"></script>
	<script src="/resources/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/js/vendor/placeholdem.min.js"></script>
	<script src="/resources/js/vendor/hoverIntent.js"></script>
	<script src="/resources/js/vendor/superfish.js"></script>
	<script src="/resources/js/vendor/jquery.actual.min.js"></script>
	<script src="/resources/js/vendor/jquerypp.custom.js"></script>
	<script src="/resources/js/vendor/jquery.elastislide.js"></script>
	<script src="/resources/js/vendor/jquery.flexslider-min.js"></script>
	<script src="/resources/js/vendor/jquery.prettyPhoto.js"></script>
	<script src="/resources/js/vendor/jquery.easing.1.3.js"></script>
	<script src="/resources/js/vendor/jquery.ui.totop.js"></script>
	<script src="/resources/js/vendor/jquery.isotope.min.js"></script>
	<script src="/resources/js/vendor/jquery.easypiechart.min.js"></script>
	<script src='/resources/js/vendor/jflickrfeed.min.js'></script>
	<script src="/resources/js/vendor/jquery.sticky.js"></script>
	<script src='/resources/js/vendor/owl.carousel.min.js'></script>
	<script src='/resources/js/vendor/jquery.nicescroll.min.js'></script>
	<script src='/resources/js/vendor/jquery.fractionslider.min.js'></script>
	<script src='/resources/js/vendor/jquery.scrollTo-min.js'></script>
	<script src='/resources/js/vendor/jquery.localscroll-min.js'></script>
	<script src='/resources/js/vendor/jquery.parallax-1.1.3.js'></script>
	<script src='/resources/js/vendor/jquery.bxslider.min.js'></script>
	<script src='/resources/js/vendor/jquery.funnyText.min.js'></script>
	<script src='twitter/jquery.tweet.min.js'></script>
	
	<!-- jQuery -->    
    <script src="/resources/js/jquery-1.10.1.min.js"></script>
    <!-- jQuery UI --> 
    <script src="/resources/js/jquery-ui/jquery-ui.min.js"></script>
    <!-- jQuery menu mobile --> 
    <script src="/resources/js/jquery.mmenu.min.all.js"></script>
    <!-- Header sticky --> 
    <script src="/resources/js/waypoints.min.js"></script>
    <!-- Login and register --> 
    <script src="/resources/js/modernizr.js"></script>
    <script src="/resources/js/login-signup.js"></script>
    <!-- Parallax --> 
    <script src="/resources/js/stellar.js"></script>
    <!-- isotope --> 
    <script src="/resources/js/isotope.pkgd.min.js"></script>
    <!-- Couter Up --> 
    <script src="/resources/js/jquery.counterup.min.js"></script>
	<!-- Flipclock --> 
    <script src="/resources/js/flipclock.js"></script>
	<!-- Responsive table -->
    <script src="/resources/js/responsive-table/responsive-tables.js"></script>
    <!-- Revolution slider --> 
    <script src="/resources/js/jquery.themepunch.plugins.min.js"></script>
    <script src="/resources/js/jquery.themepunch.revolution.min.js"></script>
	<!-- Owl carousel slider -->
    <script src="/resources/js/owl.carousel.js"></script>
	<!-- Bxslider --> 
    <script src="/resources/js/bxslider/jquery.bxslider.min.js"></script>
    <!-- Fancybox --> 
    <script src="/resources/js/fancybox/jquery.fancybox.js"></script>
    <script src="/resources/js/fancybox/helpers/jquery.fancybox-media.js"></script>
    <!-- Style Switch -->
    <script src="/resources/js/styleswitch.js"></script>
    <!-- Main script --> 
    <script src="/resources/js/script.js"></script>


	<script src="/resources/js/vendor/plugins.js"></script>
	<script src="/resources/js/vendor/main.js"></script>
</div>

<div class="modal fade" id="modalRemove" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only"></span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Sterge Elev</h4>
				</div>
				<div class="modal-body">Sunte&#355i sigur c&#259 dori&#355i
					s&#259 sterge&#355i elevul ?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Anulare</button>
					<a href="" class="btn btn-danger deactivateBtn">Sterge</a>

				</div>
			</div>
		</div>
	</div>

</html>


