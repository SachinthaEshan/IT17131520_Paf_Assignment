<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get All Products</title>

<!-- ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<!-- data tables -->
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

<body>
	<table id="display">
	
	
<script>
	
$(() => {
    var table = $("#display tbody");
 
    $.ajax({
        url: 'http://localhost:8080/SellNBye/product_tab/',
        method: "GET",
        xhrFields: {
            withCredentials: true
        },
        success: function (data) {
            table.empty();
            $.each(data, function (a, b) {
                table.append("<tr><td>"+b.id+"</td>" +
                    "<td>"+b.name+"</td>"+
                    "<td>" + b.description + "</td>" +
                    "<td>" + b.unitprice + "</td>" +
                    "<td>" + b.unitstock + "</td>" +
                    "</tr>");
            });
 
            $("#display").DataTable();
        }
    });
});

</script>

</table>
</body>
</html>