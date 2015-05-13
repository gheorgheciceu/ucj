<%@ include file="../layout/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">

<title>Sports&amp;Life</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

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
<link
	href="${pageContext.request.contextPath}/resources/css/timetableModal.css"
	rel="stylesheet">

<script src="/resources/js/vendor/modernizr-2.6.2.min.js"></script>
</head>

<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
	tabindex="-1" id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title">
					<font color="#FFFFF">A&#355i uitat parola ?</font>
				</h4>
			</div>
			<div class="modal-body">
				<p>V&#259 rug&#259m introduce-&#355i adresa dumneavoastr&#259 de
					email</p>
				<input type="text" name="email" placeholder="Email"
					autocomplete="off" class="form-control placeholder-no-fix">

			</div>
			<div class="modal-footer">
				<button data-dismiss="modal" class="btn btn-default" type="button">Anulare</button>
				<button class="btn btn-primary" type="button">Trimite
					&raquo;</button>
			</div>
		</div>
	</div>
</div>



<body>
	<div class="time">
		<section id="middle" class="darkgrey_section last_content_section">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						<h2 class="block-header">
							<strong>Programari</strong> - ${professor.firstName}
							${professor.lastName}
						</h2>
					</div>
				</div>
				<div class="row">
					<div class="text-center filters col-sm-12">
						<ul id="timetable_filter">
							<li><a class="selected" href="/student-timetable">Vizualizare
									orar</a></li>
							<c:forEach items="${categories}" var="category">
							
								<c:choose>
									<c:when test="${category.id == selectedCategory}">
										<li><a href="student-timetable/${category.id}" class="selected" >Categoria:
												${category.type.type}</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="student-timetable/${category.id}" class="">Categoria:
												${category.type.type}</a></li>
									</c:otherwise>
								</c:choose>

							</c:forEach>
							<!-- <li><a data-filter=".A.B" href="#" class="">A</a></li>
							<li><a data-filter=".bodyuilding" href="#" class="">Bodyuilding</a></li>
							<li><a data-filter=".fitness" href="#" class="">Fitness</a></li>
							<li><a data-filter=".yoga" href="#" class="">Yoga</a></li>
							<li><a data-filter=".pilates" href="#" class="">Pilates</a></li> -->
						</ul>

						<div class="clearfix"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="table-responsive">
							<table class="table table-striped table-bordered" id="timetable">
								<thead>
									<tr>
										<th></th>
										<th>${timetables[0][0]}</th>
										<th>${timetables[0][1]}</th>
										<th>${timetables[0][2]}</th>
										<th>${timetables[0][3]}</th>
										<th>${timetables[0][4]}</th>
										<th>${timetables[0][5]}</th>
										<th>${timetables[0][6]}</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th>8:00 - 10:00</th>

										<c:choose>
											<c:when test="${empty timetables[1][0]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/1/0"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td>${timetables[1][0]}</td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[1][1]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/1/1"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td>${timetables[1][1]}</td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[1][2]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/1/2"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td>${timetables[1][2]}</td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[1][3]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/1/3"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td>${timetables[1][3]}</td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[1][4]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/1/4"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td>${timetables[1][4]}</td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[1][5]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/1/5"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td>${timetables[1][5]}</td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[1][6]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/1/6"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td>${timetables[1][6]}</td>
											</c:otherwise>
										</c:choose>
									</tr>

									<tr>
										<th>10:00 - 12:00</th>
										<%-- <td>${timetables[2][0]}</td>
										<td>${timetables[2][1]}</td>
										<td>${timetables[2][2]}</td>
										<td>${timetables[2][3]}</td>
										<td>${timetables[2][4]}</td>
										<td>${timetables[2][5]}</td>
										<td>${timetables[2][6]}</td> --%>
										<c:choose>
											<c:when test="${empty timetables[2][0]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/2/0"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/2/0"/>">${timetables[2][0]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[2][1]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/2/1"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/2/1"/>">${timetables[2][1]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[2][2]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/2/2"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/2/2"/>">${timetables[2][2]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[2][3]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/2/3"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/2/3"/>">${timetables[2][3]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[2][4]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/2/4"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/2/4"/>">${timetables[2][4]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[2][5]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/2/5"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/2/5"/>">${timetables[2][5]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[2][6]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/2/6"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/2/6"/>">${timetables[2][6]}</a></td>
											</c:otherwise>
										</c:choose>
									</tr>

									<tr>
										<th>12:00 - 14:00</th>
										<%-- 	<td>${timetables[3][0]}</td>
										<td>${timetables[3][1]}</td>
										<td>${timetables[3][2]}</td>
										<td>${timetables[3][3]}</td>
										<td>${timetables[3][4]}</td>
										<td>${timetables[3][5]}</td>
										<td>${timetables[3][6]}</td> --%>
										<c:choose>
											<c:when test="${empty timetables[3][0]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/3/0"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/3/0"/>">${timetables[3][0]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[3][1]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/3/1"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/3/1"/>">${timetables[3][1]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[3][2]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/3/2"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/3/2"/>">${timetables[3][2]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[3][3]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/3/3"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/3/3"/>">${timetables[3][3]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[3][4]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/3/4"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/3/4"/>">${timetables[3][4]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[3][5]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/3/5"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/3/5"/>">${timetables[3][5]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[3][6]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/3/6"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/3/6"/>">${timetables[3][6]}</a></td>
											</c:otherwise>
										</c:choose>
									</tr>

									<tr>
										<th>14:00 - 16:00</th>
										<%-- <td>${timetables[4][0]}</td>
										<td>${timetables[4][1]}</td>
										<td>${timetables[4][2]}</td>
										<td>${timetables[4][3]}</td>
										<td>${timetables[4][4]}</td>
										<td>${timetables[4][5]}</td>
										<td>${timetables[4][6]}</td> --%>
										<c:choose>
											<c:when test="${empty timetables[4][0]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/4/0"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/4/0"/>">${timetables[4][0]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[4][1]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/4/1"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/4/1"/>">${timetables[4][1]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[4][2]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/4/2"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/4/2"/>">${timetables[4][2]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[4][3]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/4/3"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/4/3"/>">${timetables[4][3]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[4][4]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/4/4"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/4/4"/>">${timetables[4][4]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[4][5]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/4/5"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/4/5"/>">${timetables[4][5]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[4][6]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/4/6"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/4/6"/>">${timetables[4][6]}</a></td>
											</c:otherwise>
										</c:choose>
									</tr>

									<tr>
										<th>16:00 - 18:00</th>
										<%-- <td>${timetables[5][0]}</td>
										<td>${timetables[5][1]}</td>
										<td>${timetables[5][2]}</td>
										<td>${timetables[5][3]}</td>
										<td>${timetables[5][4]}</td>
										<td>${timetables[5][5]}</td>
										<td>${timetables[5][6]}</td> --%>
										<c:choose>
											<c:when test="${empty timetables[5][0]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/5/0"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/5/0"/>">${timetables[5][0]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[5][1]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/5/1"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/5/1"/>">${timetables[5][1]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[5][2]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/5/2"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/5/2"/>">${timetables[5][2]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[5][3]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/5/3"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/5/3"/>">${timetables[5][3]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[5][4]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/5/4"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/5/4"/>">${timetables[5][4]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[5][5]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/5/5"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/5/5"/>">${timetables[5][5]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[5][6]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/5/6"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/5/6"/>">${timetables[5][6]}</a></td>
											</c:otherwise>
										</c:choose>
									</tr>

									<tr>
										<th>18:00 - 20:00</th>
										<%-- 	<td>${timetables[6][0]}</td>
										<td>${timetables[6][1]}</td>
										<td>${timetables[6][2]}</td>
										<td>${timetables[6][3]}</td>
										<td>${timetables[6][4]}</td>
										<td>${timetables[6][5]}</td>
										<td>${timetables[6][6]}</td> --%>
										<c:choose>
											<c:when test="${empty timetables[6][0]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/6/0"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/6/0/"/>">${timetables[6][0]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[6][1]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/6/1"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/6/1"/>">${timetables[6][1]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[6][2]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/6/2"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/6/2"/>">${timetables[6][2]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[6][3]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/6/3"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/6/3"/>">${timetables[6][3]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[6][4]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/6/4"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/6/4"/>">${timetables[6][4]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[6][5]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/6/5"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/6/5"/>">${timetables[6][5]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[6][6]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/6/6"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/6/6"/>">${timetables[6][6]}</a></td>
											</c:otherwise>
										</c:choose>
									</tr>
									<tr>
										<th>20:00 - 22:00</th>
										<%-- <td>${timetables[7][0]}</td>
										<td>${timetables[7][1]}</td>
										<td>${timetables[7][2]}</td>
										<td>${timetables[7][3]}</td>
										<td>${timetables[7][4]}</td>
										<td>${timetables[7][5]}</td>
										<td>${timetables[7][6]}</td> --%>
										<c:choose>
											<c:when test="${empty timetables[7][0]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/7/0"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/7/0"/>">${timetables[7][0]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[7][1]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/7/1"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/7/1"/>">${timetables[7][1]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[7][2]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/7/2"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/7/2"/>">${timetables[7][2]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[7][3]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/7/3"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/7/3"/>">${timetables[7][3]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[7][4]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/7/4"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/7/4"/>">${timetables[7][4]}</a></td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[7][5]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/7/5"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/7/5"/>">${timetables[7][5]}</td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${empty timetables[7][6]}">
												<td><a class=""
													href="<spring:url value="programare/${selectedCategory}/7/6"/>">Programare</a>
											</c:when>
											<c:otherwise>
												<td><a class=""
													href="<spring:url value="deactivate-appointment/${selectedCategory}/7/6"/>">${timetables[7][6]}</a></td>
											</c:otherwise>
										</c:choose>
									</tr>

									<!-- <tr>
										<th>14:00 - 15:00</th>
										<td><a href="class-single.html" class="bodyuilding">
												Bodyuilding </a></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td></td>
										<td><a href="class-single.html" class="yoga"> Yoga </a></td>
										<td><a href="class-single.html" class="bodyuilding">
												Bodyuilding </a></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td></td>
									</tr>

									<tr>
										<th>15:00 - 16:00</th>
										<td></td>
										<td><a href="class-single.html" class="basketball">
												Basketball </a></td>
										<td><a href="class-single.html" class="pilates">
												Pilates </a></td>
										<td><a href="class-single.html" class="basketball">
												Basketball </a></td>
										<td><a href="class-single.html" class="bodyuilding">
												Bodyuilding </a></td>
										<td><a href="class-single.html" class="yoga"> Yoga </a></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
									</tr>

									<tr>
										<th>16:00 - 17:00</th>
										<td><a href="class-single.html" class="bodyuilding">
												Bodyuilding </a></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td><a href="class-single.html" class="yoga"> Yoga </a></td>
										<td></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td><a href="class-single.html" class="basketball">
												Basketball </a></td>
										<td></td>
									</tr>


									<tr>
										<th>17:00 - 18:00</th>
										<td><a href="class-single.html" class="bodyuilding">
												Bodyuilding </a></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td><a href="class-single.html" class="yoga"> Yoga </a></td>
										<td></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td><a href="class-single.html" class="bodyuilding">
												Bodyuilding </a></td>
										<td></td>
									</tr>


									<tr>
										<th>18:00 - 19:00</th>
										<td><a href="class-single.html" class="basketball">
												Basketball </a></td>
										<td></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td><a href="class-single.html" class="bodyuilding">
												Bodyuilding </a></td>
										<td></td>
										<td><a href="class-single.html" class="bodyuilding">
												Bodyuilding </a></td>
										<td></td>
									</tr>


									<tr>
										<th>19:00 - 20:00</th>
										<td><a href="class-single.html" class="bodyuilding">
												Bodyuilding </a></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td></td>
										<td><a href="class-single.html" class="yoga"> Yoga </a></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td><a href="class-single.html" class="bodyuilding">
												Bodyuilding </a></td>
										<td></td>
									</tr>


									<tr>
										<th>20:00 - 21:00</th>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td><a href="class-single.html" class="yoga"> Yoga </a></td>
										<td></td>
										<td><a href="class-single.html" class="fitness">
												Fitness </a></td>
										<td></td>
										<td></td>
									</tr> -->

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


		<!-- 	<script src="/resources/js/vendor/plugins.js"></script>
		<script src="/resources/js/vendor/main.js"></script> -->
	</div>
</body>
</html>
