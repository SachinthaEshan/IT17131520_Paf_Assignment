<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRODUCTS</title>
<!-- ADD BOOSTRAP css-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- ADD BOOSTRAP js-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!-- ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<!-- Submit form data to api -->
	<div class="container">
	<br>
		<form id="idform">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="name">Product Name</label> <input type="text"
						class="form-control" name="name" id="name" placeholder="Name">
				</div>
				<div class="form-group col-md-6">
					<label for="email">Product Description</label> <input type="text"
						class="form-control" name="name" id="desc" placeholder="Description">
				</div>
			
				<div class="form-group">
					<label for="inputAddress2">Product Unit Price</label> <input type="text"
						class="form-control" name="name" id="price" placeholder="Price">
				</div>
			
				<div class="form-group">
					<label for="inputAddress2">Product Unit stock</label> <input type="text"
						class="form-control" name="name" id="stock" placeholder="Value">
				</div>
			</div>
			<input class="btn btn-primary" type="submit" value="Add Product" id="save_data"/>
		</form>

		<!-- submit function -->

		<script>
			/*$(document).ready(function() {
				$("#save_data").click(function() {
					alert("succeess");
					$.ajax({
						url : "localhost:8080/SellNBye/product_tab/",
						type : "post",
						data : {
							name : $('#name').val(),
							description : $('#desc').val(),
							unitprice : $('#price').val(),
							unitstock : $('#stock').val(),
							success : function(data) {
								alert(data);
							}
						}
					});
				});
			});*/
			
			$("#idform").submit(function(e) {

			    e.preventDefault(); // avoid to execute the actual submit of the form.

			    var form = $(this);
			    var url = form.attr('localhost:8080/SellNBye/product_tab/');

			    $.ajax({
			           type: "POST",
			           url: url,
			           data: form.serialize(), // serializes the form's elements.
			           success: function(data)
			           {
			               alert(data); // show response from the php script.
			           }
			         });


			});
			
		</script>
	</div>
</body>
</html>