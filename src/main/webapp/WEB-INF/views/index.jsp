<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    
	    <title>
		Jai Ram G ki
		</title>  
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<!-- 		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	 
		<script src="resources/js/main.js"></script>
	    <link href="resources/css/main.css" rel="stylesheet"> 
	    
	    
<!-- 	     jQuery -->
<!-- 		<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script> -->
		
<!-- 		<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap --> 
<!-- 		<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" /> -->
		
		<!-- Bootstrap Date-Picker Plugin -->
<!-- 		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script> -->
<!-- 		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/> -->
			    
	    
	    <script>
   /* $(document).ready(function(){
      var date_input=$('input[name="dob"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'dd/mm/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })*/
</script>
	     
	</head>
	<body>
		<!-- The sidebar -->
		<div class="sidebar">
		  <a class="active" onclick="customerRegForm()">Registration</a>
		  <a href="#news">News</a>
		  <a href="#contact">Contact</a>
		  <a href="#about">About</a>
		  <h3>Jai Ram G ki!</h3>
		</div>
		
		<!-- Page content --> 
		<div class="content" id="dataDiv">
			 
  
		  
</div>   
		<hr/>
	<div id="displayDiv" style="display:none"><h3>JSON Data returned from Server after processing</h3>
		<div id="processedData"></div>
	</div>	
			
		</div>
	 
	 <script type="text/javascript">

	 
	 
	/* jQuery(document).ready(function($) {
		 
			$("#submit").click(function(){
				var customerData = {};
				customerData["firstName"] = $("#fName").val();
				customerData["middleName"] = $("#mName").val();
				customerData["lastName"] = $("#lName").val();
				customerData["email"] = $("#inputEmail").val();
				customerData["addressLine1"] = $("#addressLine1").val();
				
				$.ajax({
					type : "POST",
					contentType : "application/json",
					url : "customer/persist",
					data : JSON.stringify(customerData),
					dataType : 'json',				
					success : function(data) {
						$('#processedData').html(JSON.stringify(data));
						$('#displayDiv').show();
					}
				});
			});
	 
		});*/
	 </script>	
	</body>
</html>