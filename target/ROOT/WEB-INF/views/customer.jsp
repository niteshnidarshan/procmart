 <form id="customer-form" method="POST" action="customer/persist">
<div style="margin-top: 1%;"> 
		  <div class="form-row">
		    <div class="form-group col-md-4">
		      <label for="fName">First Name</label>
		      <input type="text" class="form-control" id="fName" name = "firstName" required>
		    </div>
		    <div class="form-group col-md-4">
		      <label for="mName">Middle Name</label>
		      <input type="text" class="form-control" id="mName" name="middleName">
		    </div>
		    <div class="form-group col-md-4">
		      <label for="lName">Last Name</label>
		      <input type="text" class="form-control" id="lName" name="lastName" required>
		    </div>
		  </div> 
		
		  <div class="form-row">
		  	<div class="form-group col-md-2">
		      <label for="dateOfBirth">Date of Birth</label>
			  <input class="form-control" type="text" id="dateOfBirth" name="dob">
			</div> 
		    <div class="form-group col-md-4">
		      <label for="inputEmail">Email as User Name</label>
		      <input type="email" class="form-control" id="inputEmail" name="email" required>
		    </div>
		    <div class="form-group col-md-3">
		      <label for="inputPassword">Password for ProcKart</label>
		      <input type="password" class="form-control" id="inputPassword" name="password" required>
		    </div>
		    <div class="form-group col-md-3">
		      <label for="confirmPassword">Confirm Password</label>
		      <input type="password" class="form-control" id="confirmPassword" name="password" required>
		    </div>
		  </div>
		  
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="phone1">Phone #</label>
		      <input type="text" value="10"  class="form-control" id="phone1" name="phone1" required>
		    </div>
		    <div class="form-group col-md-6">
		      <label for="phone2">Alternate Phone #</label>
		      <input type="text" value="10"  class="form-control" id="phone2" name="phone2" required>
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
		  <button type="submit" class="btn btn-primary">Register</button> 
		  
		  
</div>  
</form>
<script> 

 
/*
$("button").click(function(){ alert("jai Ram G ki.");
  $.ajax({url: "customer/registration", type: "POST", success: function(result){
    $("#div1").html(result);
  }});
});
 */  
</script>