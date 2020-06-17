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
	    
<!-- 	    <link href="resources/css/jquery.datepick.css" rel="stylesheet"> -->
<!-- 		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<!-- 		<script src="resources/js/jquery.plugin.min.js"></script> -->
<!-- 		<script src="resources/js/jquery.datepick.js"></script> -->
<!-- 		<script> -->
<!--  		$(function() { -->
<!--  			$('#dateOfBirth').datepick();  -->
<!--  		});  -->
<!-- 		</script> -->
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
			 
<div style="margin-top: 1%;"> 
		  <div class="form-row">
		    <div class="form-group col-md-4">
		      <label for="fName">First Name</label>
		      <input type="text" class="form-control" id="fName" name = "firstName">
		    </div>
		    <div class="form-group col-md-4">
		      <label for="mName">Middle Name</label>
		      <input type="text" class="form-control" id="mName" name="middleName">
		    </div>
		    <div class="form-group col-md-4">
		      <label for="lName">Last Name</label>
		      <input type="text" class="form-control" id="lName" name="lastName" >
		    </div>
		  </div> 
		
		  <div class="form-row">
		  	<div class="form-group col-md-2">
		      <label for="dateOfBirth">Date of Birth</label>
			  <input class="form-control" type="text" id="dateOfBirth" name="dob">
			</div> 
		    <div class="form-group col-md-4">
		      <label for="inputEmail">Email as User Name</label>
		      <input type="email" class="form-control" id="inputEmail" name="email" >
		    </div>
		    <div class="form-group col-md-3">
		      <label for="inputPassword">Password for ProcKart</label>
		      <input type="password" class="form-control" id="inputPassword" name="password" >
		    </div>
		    <div class="form-group col-md-3">
		      <label for="confirmPassword">Confirm Password</label>
		      <input type="password" class="form-control" id="confirmPassword" name="password">
		    </div>
		  </div>
		  
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="phone1">Phone #</label>
		      <input type="text" value="10"  class="form-control" id="phone1" name="phone1">
		    </div>
		    <div class="form-group col-md-6">
		      <label for="phone2">Alternate Phone #</label>
		      <input type="text" value="10"  class="form-control" id="phone2" name="phone2" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="addressLine1">Address Line1</label>
		    <input type="text" class="form-control" id="addressLine1" name="addressLine1" placeholder="Apartment, studio, or floor">
		  </div>
		  <div class="form-group">
		    <label for="addressLine2">Address Line 2</label>
		    <input type="text" class="form-control" id="addressLine2" name="addressLine2" placeholder="Street, locality">
		  </div>
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="city">City</label>
		      <input type="text" class="form-control" id="city" name="city">
		    </div>
		    <div class="form-group col-md-4">
		      <label for="state">State</label>
		      <input type="text" class="form-control" id="state" name="state">
		    </div>
		    <div class="form-group col-md-2">
		      <label for="zip">Zip</label>
		      <input type="text" class="form-control" id="zip" name="zip">
		    </div>
		  </div>
		   
		  <div class="form-group">
		    <label for="landmark">Landmark</label>
		    <input type="text" class="form-control" id="landmark" name="landmark" placeholder="Landmark">
		  </div>
		  
		  <div class="form-group"  style="display: none;">
		    <div class="form-check">
		      <input class="form-check-input" type="checkbox" id="gridCheck">
		      <label class="form-check-label" for="gridCheck">
		        Check me out
		      </label>
		    </div>
		  </div>
		  <button type="button" id="submit" class="btn btn-primary">Register</button> 
		  
		  
</div>   
		<hr/>
	<div id="displayDiv" style="display:none"><h3>JSON Data returned from Server after processing</h3>
		<div id="processedData"></div>
	</div>	
			
		</div>
	 
	 <script type="text/javascript">
	 jQuery(document).ready(function($) {
		 
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
	 
		});
	 </script>	
	</body>
</html>