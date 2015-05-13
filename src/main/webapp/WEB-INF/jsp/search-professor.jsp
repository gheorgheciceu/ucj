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


<c:if test="${param.registred eq true}">
	<div class="alert alert-success alertPoz">Profesorul a fost
		inregistrat cu succes !</div>
</c:if>

<c:if test="${param.edited eq true}">
	<div class="alert alert-success alertPoz" align="center">Instructorul
		a fost editat cu succes !</div>
</c:if>

<c:if test="${param.deleted eq true}">
	<div class="alert alert-success alertPoz" align="center">Instructorul
		a fost sters cu succes !</div>
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
				<div class="text-center filters col-sm-12"></div>
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
									<th></th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${professor}" var="professor">
									<tr>
										<td class="white"><a
											href="<spring:url value="/professor/${professor.id}" />">${professor.lastName}</a></td>
										<td class="white">${professor.firstName}</td>
										<td class="white">${professor.email}</td>
										<td class="white">${professor.phone}</td>
										<td class="col-md-1"><a
											href="<spring:url value="/delete-professor/${professor.id}" />"
											data-toggle="tooltip" data-original-title="sterge"
											class="btn btn-danger btn-xs triggerRemove"><i
												class="fa fa-trash-o"></i> </a></td>
										<td class="col-md-1"> <a	href="<spring:url value="/edit-professor/${professor.id}" />"
											data-toggle="tooltip" data-original-title="editeaz&#259"
											class="btn btn-warning btn-xs"><i
												class="fa fa-pencil-square-o"></i> </a></td>
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
				<h4 class="modal-title" id="myModalLabel">Sterge Instructor</h4>
			</div>
			<div class="modal-body">Sunte&#355i sigur c&#259 dori&#355i
				s&#259 sterge&#355i instructorul ?</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Anulare</button>
				<a href="" class="btn btn-danger deactivateBtn">Sterge</a>

			</div>
		</div>
	</div>
</div>

</html>