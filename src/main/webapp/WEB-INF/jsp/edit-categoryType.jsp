<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>s

<html>

<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</head>

<div class="container">

	<form:form class="cd-form" modelAttribute="categoryType" method="post">

		<h4 class="formTitle">Modificare Categorie </h4>
		
		<p class="fieldset">
			<label class="image-replace cd-email" for="signin-email"><i
				class="fa fa-user"></i></label>
			<form:input path="type"
				class="full-width has-padding has-border" id="signin-email"
				type="text" placeholder="Numele instructorului" />
			<span class="cd-error-message">Error message here!</span>
		</p>
				<p class="fieldset">
			<label class="image-replace cd-email" for="signin-email"><i
				class="fa fa-sort-numeric-asc"></i></label>
			<form:input path="mandatoryHours"
				class="full-width has-padding has-border" id="signin-email"
				type="text" placeholder="Numele instructorului" />
			<span class="cd-error-message">Error message here!</span>
		</p>



		<p class="fieldset">
			<input class="full-width" type="submit" value="INREGISTRARE">
		</p>
	</form:form>
</div>
</html>