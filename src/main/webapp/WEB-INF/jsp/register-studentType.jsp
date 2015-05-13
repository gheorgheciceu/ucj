<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="../layout/taglib.jsp"%>
<html>

<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="/resources/js/vendor/modernizr-2.6.2.min.js"></script>

<script type="text/javascript">
	/*
	 Author: Tristan Denyer (based on Charlie Griefer's original clone code, and some great help from Dan - see his comments in blog post)
	 Plugin and demo at http://tristandenyer.com/using-jquery-to-duplicate-a-section-of-a-form-maintaining-accessibility/
	 Ver: 0.9.4
	 Date: Aug 25, 2013
	 */
	$(function() {
		$('#btnAdd').click(
				function() {
					var num = $('.clonedInput').length, // Checks to see how many "duplicatable" input fields we currently have
					newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
					newElem = $('#entry' + num).clone().attr('id',
							'entry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value

					/*  This is where we manipulate the name/id values of the input inside the new, cloned element
					    Below are examples of what forms elements you can clone, but not the only ones.
					    There are 2 basic structures below: one for an H2, and one for form elements.
					    To make more, you can copy the one for form elements and simply update the classes for its label and input.
					    Keep in mind that the .val() method is what clears the element when it gets cloned. Radio and checkboxes need .val([]) instead of .val('').
					 */
					// H2 - section
					newElem.find('.heading-reference').attr('id',
							'ID' + newNum + '_reference').attr('name',
							'ID' + newNum + '_reference').html(
							'Entry #' + newNum);

					// Title - select
					newElem.find('.label_ttl').attr('for',
							'ID' + newNum + '_title');
					newElem.find('.select_ttl').attr('id',
							'ID' + newNum + '_title').attr('name',
							'ID' + newNum + '_title').val('');

					// First name - text
					newElem.find('.label_fn').attr('for',
							'ID' + newNum + '_first_name');
					newElem.find('.input_fn').attr('id',
							'ID' + newNum + '_first_name').attr('name',
							'ID' + newNum + '_first_name').val('');

					// Last name - text
					newElem.find('.label_ln').attr('for',
							'ID' + newNum + '_last_name');
					newElem.find('.input_ln').attr('id',
							'ID' + newNum + '_last_name').attr('name',
							'ID' + newNum + '_last_name').val('');

					// Color - checkbox
					newElem.find('.label_checkboxitem').attr('for',
							'ID' + newNum + '_checkboxitem');
					newElem.find('.input_checkboxitem').attr('id',
							'ID' + newNum + '_checkboxitem').attr('name',
							'ID' + newNum + '_checkboxitem').val([]);

					// Skate - radio
					newElem.find('.label_radio').attr('for',
							'ID' + newNum + '_radioitem');
					newElem.find('.input_radio').attr('id',
							'ID' + newNum + '_radioitem').attr('name',
							'ID' + newNum + '_radioitem').val([]);

					// Email - text
					newElem.find('.label_email').attr('for',
							'ID' + newNum + '_email_address');
					newElem.find('.input_email').attr('id',
							'ID' + newNum + '_email_address').attr('name',
							'ID' + newNum + '_email_address').val('');

					// Twitter handle (for Bootstrap demo) - append and text
					newElem.find('.label_twt').attr('for',
							'ID' + newNum + '_twitter_handle');
					newElem.find('.input_twt').attr('id',
							'ID' + newNum + '_twitter_handle').attr('name',
							'ID' + newNum + '_twitter_handle').val('');

					// Insert the new element after the last "duplicatable" input field
					$('#entry' + num).after(newElem);
					$('#ID' + newNum + '_title').focus();

					// Enable the "remove" button. This only shows once you have a duplicated section.
					$('#btnDel').attr('disabled', false);

					// Right now you can only add 4 sections, for a total of 5. Change '5' below to the max number of sections you want to allow.
					if (newNum == 5)
						$('#btnAdd').attr('disabled', true).prop('value',
								"You've reached the limit"); // value here updates the text in the 'add' button when the limit is reached 
				});

		$('#btnDel')
				.click(
						function() {
							// Confirmation dialog box. Works on all desktop browsers and iPhone.
							if (confirm("Are you sure you wish to remove this section? This cannot be undone.")) {
								var num = $('.clonedInput').length;
								// how many "duplicatable" input fields we currently have
								$('#entry' + num).slideUp(
										'slow',
										function() {
											$(this).remove();
											// if only one element remains, disable the "remove" button
											if (num - 1 === 1)
												$('#btnDel').attr('disabled',
														true);
											// enable the "add" button
											$('#btnAdd')
													.attr('disabled', false)
													.prop('value',
															"add section");
										});
							}
							return false; // Removes the last section you added
						});
		// Enable the "add" button
		$('#btnAdd').attr('disabled', false);
		// Disable the "remove" button
		$('#btnDel').attr('disabled', true);
	});
</script>

<c:if test="${param.fail eq true}">
		<div class="alert alert-danger alertPoz">Elevul nu a fost
			inregistrat !</div>
</c:if>

 <script type="text/javascript">
	$(document).ready(
			function() {
				$.getJSON('/get-all-categories', {
					ajax : 'true'
				}, function(data) {
					var html = '<option value="">Categoria</option>';
					var len = data.length;
					for (var i = 0; i < len; i++) {
						html += '<option value="' + data[i].id + '">'
								+ data[i].type + '</option>';
					}
					html += '</option>';

					$('#category').html(html);
				});
			});
</script>  

<script type="text/javascript">
	$(document).ready(function() {
		$('#category').change(function() {
			$.getJSON('/get-professors-by-category-id', {
				categoryId : $(this).val(),
				ajax : 'true'
			}, function(data) {
				var html = '<option value="">Instructor</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i].id + '">' + data[i].firstName

					+ '</option>';
				}
				html += '</option>';

				$('#instructor').html(html);
			});
		});
	});
</script> 


<!-- <script type="text/javascript">
	$(document).ready(function() {
		$("#instructor").change(onSelectChange);
	});

	function onSelectChange() {
		var selected = $("#instructor option:selected");
		var output = "";
		if (selected.val() != 0) {
			output = "You selected City " + selected.text();
		}
		$("#output").html(output);
	}
</script> -->

</head>
<div class="container">

	<form:form class="cd-form" modelAttribute="student" method="post">

		<h4 class="formTitle">INREGISTRARE STUDENT</h4>

		<p class="fieldset">
			<label class="image-replace cd-email" for="signin-email"><i
				class="fa fa-user"></i></label> <form:input path="firstName"
				class="full-width has-padding has-border" id="signin-email"
				type="text" placeholder="Numele studentului"/> <span
				class="cd-error-message">Error message here!</span>
		</p>

		<p class="fieldset">
			<label class="image-replace cd-password" for="signin-password"><i
				class="fa fa-user"></i></label> <form:input path="lastName"
				class="full-width has-padding has-border" id="signin-password"
				type="text" placeholder="Prenumele studentului"/> <span
				class="cd-error-message">Error message here!</span>
		</p>

		<p class="fieldset">
			<label class="image-replace cd-email" for="signin-email"><i
				class="fa fa-envelope-o"></i></label> <form:input path="email"
				class="full-width has-padding has-border" id="signin-email"
				type="text" placeholder="Adresa de e-mail a studentului"/> <span
				class="cd-error-message">Error message here!</span>
		</p>

		<p class="fieldset">
			<label class="image-replace cd-email" for="signin-email"><i
				class="fa fa-sort-numeric-asc"></i></label> <form:input path="cnp"
				class="full-width has-padding has-border" id="signin-email"
				type="text" placeholder="CNP-ul studentului"/> <span
				class="cd-error-message">Error message here!</span>
		</p>

		<p class="fieldset">
			<label class="image-replace cd-email" for="signin-email"><i
				class="fa fa-building"></i></label> <form:input path="address"
				class="full-width has-padding has-border" id="signin-email"
				type="text" placeholder="Adresa studentului"/> <span
				class="cd-error-message">Error message here!</span>
		</p>

		<div id="entry1" class="clonedInput">

			<!-- <p class="fieldset">
				<label for="show-button">Categoria:</label> <select id="category"
					name="category">
					<option value="A">A</option>
					<option value="B">B</option>
				</select>
			</p>

			<p class="fieldset">
				<label for="show-button">Instructorul:</label> <select
					id="intructor" name="instructor">
					<option value="9">9</option>
					<option value="12">12 Items</option>
				</select>
			</p> -->

			<fieldset>
				<div class="multiple">

					<select id="category" name="category">
						<!-- <option value="A">A</option>
						<option value="B">B</option>
						<option value="C">C</option> -->
					</select> 
					
					<select id="instructor" name="instructor">
						<!-- <option value="">City</option> -->
					</select>

				</div>
			</fieldset>


		</div>

		<div id="addDelButtons">
			<input type="button" id="btnAdd" value="add section"> <input
				type="button" id="btnDel" value="remove section above">
		</div>



		<p class="fieldset">
			<input class="full-width" type="submit" value="INREGISTRARE">
		</p>
	</form:form>
</div>



<!-- <script type="text/javascript">
	<script type="text/javascript" charset="utf-8">
	function getStates() {
		$.getJSON("get-professors-by-category-id", {
			categoryId : $('#category').val()
		}, function(data) {
			var html = '';
			var len = data.length;
			for (var i = 0; i < len; i++) {
				html += '<option value="' + data[i].id + '">' + data[i].name
						+ '</option>';
			}
			$('#instructor').append(html);
		});
	}

	$(document).ready(function() {
		$('#category').change(function() {
			getStates();
		});
	});
</script> -->

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

</html>