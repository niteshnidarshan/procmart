var xhr;
try{
		xhr=new ActiveXObject("Msxml2.XMLHTTP");
	}catch(e){
		xhr=new XMLHttpRequest();
}

function test(){			
	xhr.open("GET","product/1",true);
	//document.getElementById("waits").style.display='block';
	xhr.onreadystatechange=kvrResponse;
	xhr.send();
}
function kvrResponse(){
	if(xhr.readyState==4){			
		if(xhr.status==200){			
			document.getElementById("result").innerHTML=xhr.responseText;
		}
	}
}

/* Set the width of the sidebar to 250px (show it) */
function openNav() {
  document.getElementById("mySidepanel").style.width = "250px";
}

/* Set the width of the sidebar to 0 (hide it) */
function closeNav() {
  document.getElementById("mySidepanel").style.width = "0";
}


function customerRegForm(){
	xhr.open("POST","customer/register-form",true); 
	xhr.onreadystatechange=customerRegisterForm;
	xhr.send();
}
function customerRegisterForm(){
	if(xhr.readyState==4){			
		if(xhr.status==200){			
			document.getElementById("dataDiv").innerHTML=xhr.responseText;
		}
	}
}
/*
function customerRegistration(){alert("Jai Ram G ki");
	xhr.open("POST","customer/registration",true); 
	xhr.onreadystatechange=customerRegisterResponse;
	xhr.send();
}
function customerRegisterResponse(){
	if(xhr.readyState==4){			
		if(xhr.status==200){			
			document.getElementById("dataDiv").innerHTML=xhr.responseText;
		}
	}
}
*/

$(document).on('submit', '#customer-form', function(e) {
    var frm = $('#customer-form');
    e.preventDefault();

    var Form = this;
    var customer = {};

    $.each(this, function(i, v){
        var input = $(v);
        
        
        if(input.attr("name") == 'dob')
    	{
        	customer[input.attr("name")] = Date.parse(input.val());
    	}
        customer[input.attr("name")] = input.val();
        delete customer["undefined"];
    }); 

    //alert(JSON.stringify(dataa));
    // alert(frm.attr('action'));
    $.ajax({
		type : "POST",
		contentType : "application/json",
		url : "customer/persist",
		data : JSON.stringify(customer),
		dataType : 'json',				
		success : function(d) {
			window.alert("we are in success of doAjaxPost method : ");
			$('#dataDiv').html(d);
		},
		error: function(e){
			window.alert(" we got an error : "); 
			console.log(e);
		}
	}); 
});